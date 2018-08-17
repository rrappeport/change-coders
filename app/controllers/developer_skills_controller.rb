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

  def create
    @developer = Developer.find(params[:developer_id])
    @skill = DeveloperSkill.new(developer: @developer)
    params[:developer][:skill_ids].reject(&:empty?).each do |skill_id|
      DeveloperSkill.create(skill_id: skill_id, developer: @developer)
    end
      redirect_to developer_dashboard_path
  end

end
