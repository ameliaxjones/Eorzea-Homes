class Housingsize < ApplicationRecord
    has_many :listings

    validates :value, length: {minimum: 3, maximum: 20}
end
