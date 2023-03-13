class Offer < ApplicationRecord
  belongs_to :buyer, class_name: "User", foreign_key: :buyer_id

  validates :description, :status, :final_price, :final_delivery_time, presence: true
  validates :status, inclusion: { in: ['Accepted', 'Rejected', 'Pending'] }
  validates :final_price, numericality: { only_integer: true, greater_than_or_equal_to: 500, less_than: 100_000_000 }
  validates :final_delivery_time, numericality: { only_integer: true }, inclusion: { in: (1..90) }

  validates :buyer, uniqueness: { scope: :service }
end
