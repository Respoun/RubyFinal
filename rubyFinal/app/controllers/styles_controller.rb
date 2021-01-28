class StylesController < ApplicationController
  before_action :set_style, only: [:show, :destroy, :edit, :update]

    def new
        @style = Style.new
        authorize @style
      end
    
      def create
        @style = Style.new(style_params)
        authorize @style
        @style.user_id = current_user.id
        if @style.save
          redirect_to style_path(@style)
        else
          render new
        end 
      end
    
      def index
        @styles = policy_scope(Style)
      end

      def show
      end

      def edit
      end

      def update
        @style.update(style_params)
        redirect_to style_path(@style)
      end

      def destroy
        @style.destroy
        redirect_to styles_path
      end

      private
    
      def set_style
        @style = Style.find(params[:id])
        authorize @style
      end

      def style_params
        params.require(:style).permit(:name, :info)
      end
end
