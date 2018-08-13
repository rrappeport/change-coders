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
    return true
  end

  def autorize_charity
    user.class == Charity && record.charity_id == user.id
  end
end
