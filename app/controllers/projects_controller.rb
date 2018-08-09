class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def pundit_user
    current_developer
  end

  def index
    @projects = policy_scope(Project)
  end
  def show
    @project = Project.find(project_params)
  end

  private
  def project_params
    params.require(:project).permit(:type, :status, :github, :deadline, :charity_id)
  end
end
