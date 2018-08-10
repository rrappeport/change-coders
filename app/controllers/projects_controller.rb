class ProjectsController < ApplicationController

  skip_before_action :authenticate_developer!, only: [:index, :show, :dashboard]

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
    @project = Project.find(params[:project_id])
    authorize @project
    @charity = @project.charity
  end

  private
  def project_params
    params.require(:project).permit(:type, :status, :github, :deadline, :charity_id, :name)
  end
end
