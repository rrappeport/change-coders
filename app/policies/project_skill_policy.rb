class ProjectSkillPolicy < ApplicationPolicy
  def destroy?
   (user.class == Developer) && record.project.leader_id  == user.id
  end

end
