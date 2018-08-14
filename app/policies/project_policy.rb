class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def create?
     user.class == Charity
  end

  def show?
    return true
  end
  def edit?
    autorize_charity
  end

  def update?
    autorize_charity
  end

  def dashboard?
    user_is_owner_or_team_member
  end

  def autorize_charity
    user.class == Charity && record.charity_id == user.id
  end

  private

  def user_is_owner_or_team_member
    (user.class == Charity && record.charity_id == user.id) ||
    (user.class == Developer && record.members.where(developer_id: user.id).any?)
  end

end
