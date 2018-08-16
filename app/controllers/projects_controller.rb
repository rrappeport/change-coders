class ProjectsController < ApplicationController
  # before_action :authenticate_charity!, only: [:new, :create, :edit, :update, :destroy]

  skip_before_action :authenticate!, only: [:index, :show]

  def index
    @projects = policy_scope(Project)
    @projects = @projects.where(nil)
    if params[:address].present?
      @charities = Charity.where("address LIKE ?", "%#{params[:address]}%")
      @projects = @projects.where(charity_id: @charities.pluck(:id))
    end
    # if !params[:charities].present?
    @projects = @projects.where(status: params[:status]) if params[:status].present?
    @projects = @projects.where(work_type: params[:work_type]) if params[:work_type].present?
    if params[:category].present?
      @charities = Charity.where(category: params[:category])
      @projects = @projects.where(charity_id: @charities.pluck(:id))
    end
    # if params[:skill].present?
    #   @skills = Skill.where(name: params[:skill])
    #   @projects = @projects.where(project_skill_id: @skills.pluck(:id))
    # end
    if params[:skill].present?
     @skill = Skill.where(name: params[:skill]).first
     projects = @projects
     @projects = @skill.projects
   end

    if params[:deadline].present?
        @projects = @projects.where("deadline <= ? ", Date.today + params[:deadline].to_i.day)
    end
    # elsif params[:charities].present?
    #   @projects = @projects.where(id: params[:projects])
    #   @projects = @projects.where(status: params[:status]) if params[:status].present?
    #   @projects = @projects.where(work_type: params[:work_type]) if params[:work_type].present?
    #   if params[:category].present?
    #     @charities = Charity.where(category: params[:category])
    #     @projects = @projects.where(charity_id: @charities.pluck(:id))
    #   end
    #   if params[:skill].present?
    #     @skills = Skill.where(name: params[:skill]).first
    #     projects = @projects
    #     @projects = @skill.projects
    #   end
    #   if params[:deadline].present?
    #       @projects = @projects.where("deadline <= ? ", Date.today + params[:deadline].to_i.day)
    #   end
    # end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
    @skills = @project.skills
    @charity = @project.charity
    @posts = Post.all
    @markers =
      [{
        lat: @charity.latitude,
        lng: @charity.longitude#,
        # infoWindow: { content: render_to_string(partial: "/carities/map_box", locals: { charity: charity }) }
      }]
  end

  def edit
    @project = Project.find(params[:id])
    authorize @project
  end

  def update
    @project = Project.find(params[:id])
    authorize @project
    params[:project][:skill_ids].reject(&:empty?).each do |skill_id|
      @project.skills << Skill.find(skill_id)
    end
    if @project.update(project_params)
      redirect_to projects_dashboard_path(@project)
    else
      render :edit
    end
  end

  def new
    @project = Project.new
    # authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.charity = current_charity
    # authorize @project
    if @project.save
      puts "Your project has been created!"
      redirect_to projects_dashboard_path
    else
      render :new
    end
  end

  def dashboard
    @charities = Charity.all
    @project = Project.find(params[:project_id])
    # authorize @project
    @proposals = @project.proposals
    # authorize @project
    @charity = @project.charity
    @skills = @project.project_skills
    @posts = Post.all
  end

  private
  def project_params
    params.require(:project).permit(:type, :status, :github, :deadline, :charity_id, :name, :details, :skill_ids)
  end
end
