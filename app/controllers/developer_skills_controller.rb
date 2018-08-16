class DeveloperSkillsController < ApplicationController
  def destroy
    @developer_skill = DeveloperSkill.find(params[:id])
    if @developer_skill.destroy
      respond_to do |format|
        format.js {}
        format.html {redirect_to developer_dashboard_path(params[:developer_id])}
      end
    end
  end
end
