class PagesController < ApplicationController
    def home
        @listings = Listing.where(open: true).order("RANDOM()").limit(3)
    end 

    def show
        
    end
# added new how page 
    def how
    end

#added designer page 
    def designers
        @designers = User.where(seller: true)
    end




end



