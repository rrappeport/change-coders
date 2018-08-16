class ProjectSkillsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @skill = ProjectSkill.new(project: @project)
    authorize @skill
    params[:project][:skill_ids].reject(&:empty?).each do |skill_id|
      ProjectSkill.create(skill_id: skill_id, project: @project)
    end
      redirect_to projects_dashboard_path(@project)
  end

  def destroy
    @project_skill = ProjectSkill.find(params[:id])
    # authorize @project_skill
    @project_skill.destroy
    redirect_to projects_dashboard_path(params[:project_id])
  end
end
