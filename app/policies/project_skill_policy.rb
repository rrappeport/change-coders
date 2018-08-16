class ProjectSkillPolicy < ApplicationPolicy

  def create?
   (user.class == Developer) && record.project.members.where(developer_id: user.id).any? ||
   (user.class == Charity && record.project.charity == user)
  end


  def destroy?
   (user.class == Developer) && record.project.members.where(developer_id: user.id).any? ||
   (user.class == Charity && record.project.charity == user)
  end

end
