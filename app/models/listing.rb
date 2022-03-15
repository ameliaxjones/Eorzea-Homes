class Listing < ApplicationRecord
  validates :price, presence: true
  validates :title, length: {minimum: 3, maximum: 50}
  validates :short_body, length: {minimum: 10}
  belongs_to :user
  has_many_attached :photos
end
