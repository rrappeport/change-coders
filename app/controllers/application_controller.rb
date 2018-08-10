class ApplicationController < ActionController::Base
  protect_from_forgery
   # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_developer!, unless: :devise_controller?
  # before_action :authenticate_charity!

  # after_action :verify_authorized, except: [:index, :dashboard, ], unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  include Pundit

  def configure_permitted_parameters
    if resource_name == :developer
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

      # For additional in app/views/devise/registrations/edit.html.erb
      devise_parameter_sanitizer.permit(:account_update, keys: [:github_username, :birth_date, :profile_pic, :experience, :description, :address, :linkedin, :skills ])
    elsif resource_name == :charity
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      # charity devise
    end
    # For additional fields in app/views/devise/registrations/new.html.erb
  end
  # Pundit: white-list approach.

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  def current_user
    current_developer || current_charity
  end

  protected

  # TODO: fix before action for both models
  # def authenticate!
  #   :authenticate_developer! || :authenticate_charity!
  #   @current_user = developer_signed_in? ? current_developer : current_charity
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
