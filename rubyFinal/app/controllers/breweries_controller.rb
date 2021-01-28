class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show, :destroy, :edit, :update]

    def new
        @brewery = Brewery.new
        authorize @brewery
      end
    
      def create
        @brewery = Brewery.new(brewery_params)
        authorize @brewery
        @brewery.user_id = current_user.id
        if @brewery.save
          redirect_to brewery_path(@brewery)
        else
          render new
        end 
      end
    
      def index
        @breweries = policy_scope(Brewery)
      end

      def show
      end

      def edit
      end

      def update
        @brewery.update(brewery_params)
        redirect_to brewery_path(@brewery)
      end

      def destroy
        @brewery.destroy
        redirect_to brewerys_path
      end

      private
    
      def set_brewery
        @brewery = Brewery.find(params[:id])
        authorize @brewery
      end

      def brewery_params
        params.require(:brewery).permit(:name, :country, :address)
      end
end
