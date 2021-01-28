class BeerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def index?
    true
  end

  def create?
    new?
  end

  def new?
    true
  end

  def edit?
    true
  end
  def update?
    edit?
  end
  def destroy?
    edit?
  end

end
