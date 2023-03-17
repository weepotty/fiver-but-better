class Review < ApplicationRecord
  belongs_to :service

  validates :comment, :rating, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
