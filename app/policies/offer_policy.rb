class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(buyer: user)
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    record.service.seller != user
  end
end
