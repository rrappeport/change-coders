class ProposalPolicy < ApplicationPolicy

  def create?
    user && user.proposals.where(project: record.project).empty?
  end
end
