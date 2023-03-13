class Service < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: :user_id

  validates :title, :description, :price, :delivery_time, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 5 }
end
