class Post < ApplicationRecord
  has_one_attached :image

  has_many :comments, dependent: :destroy
  has_many :post_likes, dependent: :destroy
  belongs_to :user
  belongs_to :category_tag

  validates :image, presence: true
end
