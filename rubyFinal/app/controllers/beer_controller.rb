class BeerController < ApplicationController
    before_action :set_beer, only: [:show, :edit, :update, :destroy]

    def index
        @beers = Beer.all
    end
    
    def new
        @brewery = Brewery.find(params[:brewery_id])
        @style = Style.find(params[:style_id])
        @beer = Beer.new
    end
    
    def create
        @beer = Beer.new(beer_params)
        @brewery = Brewery.find(params[:brewery_id])
        @style = Style.find(params[:style_id])
        @beer.brewery = @brewery
        @beer.style = @style
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
