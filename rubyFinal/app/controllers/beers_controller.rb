class BeersController < ApplicationController
    before_action :set_beer, only: [:show, :edit, :update, :destroy]

    def index
        @beers = Beer.all
    end
    
    def new
        @breweries = Brewery.all
        @styles = Style.all
        @beer = Beer.new
    end
    
    def create
        @beer = Beer.new(beer_params)
        @beerbrewery = Brewery.find(params[:permission_form][:brewery_id])
        @beer.brewery = @beerbrewery
        @beerstyle = Style.find(params[:permission_form][:style_id])
        @beer.style= @beerstyle
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
        redirect_to beer_index_path
    end

    private

    def set_beer
      @beer = Beer.find(params[:id])
    end
  
    def beer_params
      params.require(:beer).permit(:name, :rating, :price, :desc, :brewery, :style)
    end
end
