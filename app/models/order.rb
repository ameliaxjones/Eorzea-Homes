class Order < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  belongs_to :game_address
  
  validates :purchase_price, presence: true
  
end
