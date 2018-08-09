class ApplicationController < ActionController::Base
  protect_from_forgery
   # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_charity!

  include Pundit

  def configure_permitted_parameters
    if resource_name == Developer
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

      # For additional in app/views/devise/registrations/edit.html.erb
      devise_parameter_sanitizer.permit(:account_update, keys: [:github_account, :birth_date, :profile_pic, :experience, :description, :address, :linkedin, :skills ])
    else
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      # charity devise
    end
    # For additional fields in app/views/devise/registrations/new.html.erb

  end
  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
