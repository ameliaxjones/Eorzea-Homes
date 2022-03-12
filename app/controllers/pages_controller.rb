class PagesController < ApplicationController
    def home
    end 
# added new how page 
    def how
    end

#added designer page 
    def designers
        @designers = User.where(seller: true)
    end


end



