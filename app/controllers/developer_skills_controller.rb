class DeveloperSkillsController < ApplicationController
  def destroy
    @developer_skill = DeveloperSkill.find_by(skill_id: params[:id])
    @developer_skill.destroy
    redirect_to developer_dashboard_path(params[:developer_id])
  end
end
