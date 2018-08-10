class DevelopersController < ApplicationController
  after_action :verify_authorized, except: :dashboard, unless: :skip_pundit?

  def dashboard
  end

  def show
     @developer = Developer.find(params[:id])
     authorize @developer
  end
end
