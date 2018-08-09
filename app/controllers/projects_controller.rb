class ProjectsController < ApplicationController
  # before_action :authenticate_developer!, only: [:show, :index]
  # before_action :authenticate_charity!, only: [:new, :create, :edit, :update]

  # def pundit_user
  #   current_developer
  # end

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
