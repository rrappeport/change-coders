class ProposalPolicy < ApplicationPolicy

  def create?
    user && user.proposals.where(project: record.project).empty?
  end

  def accept?
    ((user.class == Developer) && (record.project.leader_id  == user.id)) || ((user.class == Charity) && (record.project.charity_id  == user.id))
  end

  def reject?
    ((user.class == Developer) && (record.project.leader_id  == user.id)) || ((user.class == Charity) && (record.project.charity_id  == user.id))
  end
end
