class GameAddress < ApplicationRecord
    belongs_to :user
    validates :datacenter, length: {minimum: 3, maximum: 20}
    validates :location, length: {minimum: 3, maximum: 20}
    validates :plot, presence: true
    validates :ward, presence: true


    def friendlyaddress
        "#{self.datacenter} #{self.location}  p#{self.plot.to_i} w#{self.ward.to_i} #{self.appartment}" 
    end

    def appartment
        if self.roomnumber.nil?
            ""
        else
        self.roomnumber.to_i
        end
    end
end
