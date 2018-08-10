class DevelopersController < ApplicationController
  # after_action :verify_authorized, except: :dashboard, unless: :skip_pundit?
def index
  @developers = Developer.all
end


  def dashboard
    @developer = current_developer
    @projects = @developer.projects
    @teams = @developer.teams
    @proposals = @developer.proposals
  end

  def show
     @developer = Developer.last
     # @developer = Developer.find(params[:id])
     # authorize @developer
end
