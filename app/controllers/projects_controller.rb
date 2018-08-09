class ProjectsController < ApplicationController
  skip_before_action :authenticate_developer!, only: [:index, :show]
  def index
    @projects = policy_scope(Project)
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  private
  def project_params
    params.require(:project).permit(:type, :status, :github, :deadline, :charity_id)
  end
end
