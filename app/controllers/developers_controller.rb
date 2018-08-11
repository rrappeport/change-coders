class DevelopersController < ApplicationController
  # after_action :verify_authorized, except: :dashboard, unless: :skip_pundit?
  def index
    @developers = Developer.all
  end

  def dashboard
    @developer = current_developer
    @projects = @developer.projects
    @proposals = @developer.proposals
    @skills = @developer.skills
  end

  def show
    @developer = current_developer
    @projects = @developer.projects
    @skills = @developer.skills
     # @developer = Developer.find(params[:id])
     # authorize @developer
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def update
    @developer = Developer.find(params[:id])
    if @developer.update(developer_params)
      redirect_to developer_path(@developer)
    else
      render :edit
    end
  end

  def teammembers(project)
    Members.all.where(project_id: project.id)
  end

  private

  def developer_params
    params.require(:developer).permit(:first_name, :last_name, :address, :description, :experience, :linkedin_username, :avatar, :birth_date)
  end

  private

  def developer_params
    params.require(:developer).permit(:first_name, :last_name, :address, :description, :experience, :linkedin_username, :avatar, :birth_date)
  end
end


