class ProjectsController < ApplicationController

  skip_before_action :authenticate_developer!, only: [:index, :show, :dashboard]

  def index
    @projects = policy_scope(Project)
    @projects = @projects.where(nil)
    @projects = @projects.where(status: params[:status]) if params[:status].present?
    @projects = @projects.where(work_type: params[:work_type]) if params[:work_type].present?
    if params[:category].present?
      @charities = Charity.where(category: params[:category])
      @projects = @projects.where(charity_id: @charities.pluck(:id))
    end
    if params[:deadline].present?
        @projects = @projects.where("deadline <= ? ", Date.today + params[:deadline].to_i.day)
    end
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
