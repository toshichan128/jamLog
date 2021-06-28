class Review < ApplicationRecord
  belongs_to :user
  belongs_to :live_house
  validates :score, presence: true
end
