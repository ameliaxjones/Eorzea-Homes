class ListingsController < ApplicationController

    def index
        @listings = Listing.all
    end

    def listings
        @listings = Listing.all
    end

    def my_listings
    end

end

