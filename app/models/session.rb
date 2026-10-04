class Session < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :Administrator, optional: true
end
