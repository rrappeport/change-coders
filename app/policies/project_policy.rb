class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end
  def show?
    return true
  end
  def edit?
    return true
  end
  def dashboard?
    return true
  end
end
