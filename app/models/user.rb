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
    updated_at > 5.minutes.ago
  end

  def username
    email.split('@').first
  end

  def country
    country_name = ISO3166::Country[location]
    return location unless country_name

    country_name.translations[I18n.locale.to_s]
  end
end
