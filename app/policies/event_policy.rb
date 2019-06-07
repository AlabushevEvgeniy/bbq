class EventPolicy < ApplicationPolicy

  def show
    true
  end

  def edit?
    update?
  end

  def update?
    user_is_owner?(@event)
  end

  def destroy?
    update?
  end


  class Scope < Scope
    def resolve
      scope
    end
  end

  private

  def user_is_owner?(event)
    user.present? && (event.try(:user) == user)
  end
end
