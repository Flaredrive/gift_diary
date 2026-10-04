class Comment < ApplicationRecord
  has_many :comment_likes
  belongs_to :user
  belongs_to :post
  belongs_to :relationship_tag
  belongs_to :gender_tag
end
