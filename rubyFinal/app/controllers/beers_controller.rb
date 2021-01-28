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
        @beer = Beer.new(beer_params)
        authorize @beer
        @beer.save
        if @beer.save
            redirect_to beer_path(@beer)
        else
          render new
        end
    end

    def show
        @brewery = Brewery.find(@beer.brewery_id)
        @style = Style.find(@beer.style_id)
    end

    def edit
      @breweries = Brewery.all
      @styles = Style.all
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
      params.require(:beer).permit(:name, :rating, :price, :desc, :brewery_id, :style_id)
    end
end
