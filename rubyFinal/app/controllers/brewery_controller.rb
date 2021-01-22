class BreweryController < ApplicationController
    def new
        @brewery = Brewery.new
      end
    
      def create
        @brewery = Brewery.new(brewery_params)
        @brewery.save
        redirect_to brewery_path(@brewery)
      end
    
      private
    
      def brewery_params
        params.require(:brewery).permit(:name, :country, :address)
      end
end
