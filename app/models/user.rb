class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :listings
  has_many :game_addresses
  has_many :orders

  ## Reviews- has mulitpul many relationships to reviews as a user can either. class_name : 'review is hardwrigin the code straight to the rewiew controller. 
  has_many :reviewee_reviews, class_name: 'Review', foreign_key: 'reviewee_id'
  has_many :reviewer_reviews, class_name: 'Review', foreign_key: 'reviewer_id'

  ## Attaches avatar image to user
  has_one_attached :avatar

  ## Validations
  validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
  file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
  
  ## creates username from email as it drops thh @xyz.com
  def username
    "#{self.email[/^[^@]+/]}"
  end


end
