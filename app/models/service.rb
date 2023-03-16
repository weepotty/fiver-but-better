class Service < ApplicationRecord
  include PgSearch::Model
  
  CATEGORIES = ["Graphic & Design", "Digital Marketing", "Writing & Translation", "Video Animation",
                "Music Audio", "Programming & Tech", "Business", "Style", "Data", "Photography"]

  belongs_to :seller, class_name: "User", foreign_key: :seller_id
  has_many :offers
  has_one_attached :photo

  validates :title, :description, :price, :delivery_time, :category, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 500, less_than: 100_000_000 }
  validates :delivery_time, numericality: { only_integer: true }, inclusion: { in: (1..90) }
  validates :category, inclusion: { in: CATEGORIES }

  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }
  # enum :category, %i[graphicdesign digitalmarketing writingtranslation videoanimation musicudio programmingtech business style data photography]
end
