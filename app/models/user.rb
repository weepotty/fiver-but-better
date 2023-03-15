class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :services, foreign_key: 'seller_id'
  has_many :offers, foreign_key: 'buyer_id'
  has_one_attached :photo

  validates :location, presence: true

  def online?
    updated_at > 2.minutes.ago
  end
end
