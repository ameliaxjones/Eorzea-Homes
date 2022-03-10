class Listing < ApplicationRecord
  has_rich_text :body 
  belongs_to :user
  has_many_attached :photos
end
