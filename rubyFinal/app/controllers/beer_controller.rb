class BeerController < ApplicationController
    before_action :set_beer, only: [:show, :edit, :update, :destroy]

    def index
        @beer = Beer.all
    end
    
    def new
        @beer = Beer.new
    end
    
    def create
        @beer = Beer.new(beer_params)
        @beer.save
        redirect_to beer_path(@beer)
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        @beer.update(beer_params)
        redirect_to beer_path(@beer)
    end
    
    def destroy
        @beer.destroy
        redirect_to beers_path
    end

    private

    def set_ber
      @beer = Beer.find(params[:id])
    end
  
    def beer_params
      params.require(:beer).permit(:name, :rating, :price, :brewery, :style, :desc)
    end
end
