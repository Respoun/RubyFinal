class BeersController < ApplicationController
    before_action :set_beer, only: [:show, :edit, :update, :destroy]

    def index
        @beers = policy_scope(Beer)
    end
    
    def new
        @breweries = Brewery.all
        @styles = Style.all
        @beer = Beer.new
        authorize @beer
    end
    
    def create
        @beer = Beer.new()
        authorize @beer
        @beerbrewery = Brewery.find(params.require(:beer).permit(:brewery).attributes.values)
        @beer.brewery = @beerbrewery
        @beerstyle = Style.find(params.require(:beer).permit(:style))
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
        redirect_to beers_path
    end

    private

    def set_beer
      @beer = Beer.find(params[:id])
      authorize @beer
    end
  
    def beer_params
      params.require(:beer).permit(:name, :rating, :price, :desc)
    end
end
