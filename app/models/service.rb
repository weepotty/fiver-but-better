class Service < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: :seller_id
  has_many :offers

  validates :title, :description, :price, :delivery_time, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 500, less_than: 100_000_000 }
  validates :delivery_time, numericality: { only_integer: true }, inclusion: { in: (1..90) }
end
