class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show, :destroy]

    def new
        @brewery = Brewery.new
      end
    
      def create
        @brewery = Brewery.new(brewery_params)
        @brewery.save
        redirect_to brewery_path(@brewery)
      end
    
      def index
        @breweries = Brewery.all
      end

      def show
      end

      def destroy
        @brewery.destroy
        redirect_to brewerys_path
      end

      private
    
      def set_brewery
        @brewery = Brewery.find(params[:id])
      end

      def brewery_params
        params.require(:brewery).permit(:name, :country, :address)
      end
end
