class Review < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  validates :content, presence: true
  validates :content, length: { maximum: 15 }
end
