class Housingsize < ApplicationRecord
    has_many :listings

    validates :value, presence: true 
end
