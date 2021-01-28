class StylesController < ApplicationController
  before_action :set_style, only: [:show, :destroy]

    def new
        @style = Style.new
      end
    
      def create
        @style = Style.new(style_params)
        @style.save
        redirect_to style_path(@style)
      end
    
      def index
        @styles = Style.all
      end

      def show
      end

      def destroy
        @style.destroy
        redirect_to styles_path
      end

      private
    
      def set_style
        @style = Style.find(params[:id])
      end

      def style_params
        params.require(:style).permit(:name, :info)
      end
end
