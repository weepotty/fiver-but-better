class Service < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: :user_id

  validates :title, :description, :price, :delivery_time, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 5, less_than: 1_000_000 }, format: { with: /\A\d{1,6}(\.\d{1,2})?\z/ }
  validates :delivery_time, numericality: { only_integer: true }, inclusion: { in: (1..90) }
end
