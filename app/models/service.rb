class Service < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: :user_id
end
