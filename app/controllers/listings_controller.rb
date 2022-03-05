class ListingsController < ApplicationController

    def index
        @listings = Listing.all
    end

    def listings
        @listings = Listing.all
    end

    def my_listings
    end

    def show
        @listing = Listing.find(params[:id])
    end

end

