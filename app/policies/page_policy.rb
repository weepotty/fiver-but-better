class UserPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.where(user.present?)
    end

  end
end
