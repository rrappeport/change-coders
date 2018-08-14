class MemberPolicy < ApplicationPolicy

  def destroy?
    ((user.class == Developer) && (record.project.leader_id  == user.id)) || ((user.class == Charity) && (record.project.charity_id  == user.id))
  end


end
