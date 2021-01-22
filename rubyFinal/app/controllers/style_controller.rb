class StyleController < ApplicationController
    def new
        @style = Style.new
      end
    
      def create
        @style = Style.new(style_params)
        @style.save
        redirect_to style_path(@style)
      end
    
      private
    
      def style_params
        params.require(:style).permit(:name, :info)
      end
end
