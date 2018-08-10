class ProjectsController < ApplicationController

  skip_before_action :authenticate_developer!, only: [:index, :show]

  def index
    @projects = policy_scope(Project)
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def edit
    @project = Project.find(params[:id])
    authorize @project
  end

  def update
    @project = Project.find(params[:id])
    authorize @project
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def dashboard
  end

  private
  def project_params
    params.require(:project).permit(:type, :status, :github, :deadline, :charity_id, :name)
  end
end
