class ApartmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
       # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
    end
  end
  def index
     return true
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    record.user == user
    # - record: the apartment passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end
end
