class ProjectSkillsController < ApplicationController
  def destroy
    @project_skill = ProjectSkill.find_by(skill_id: params[:id])
    authorize @project_skill
    @project_skill.destroy
    redirect_to projects_dashboard_path(params[:project_id])
  end
end
