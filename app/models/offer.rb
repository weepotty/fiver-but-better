class Offer < ApplicationRecord
  belongs_to :buyer, class_name: "User", foreign_key: :user_id
end
