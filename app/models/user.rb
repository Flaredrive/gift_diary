class User < ApplicationRecord
  has_secure_password
  has_one_attached :image
  has_many :posts, dependent: :destroy
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :name, presence: true
  validates :email_address, presence: true, uniqueness: true
end
