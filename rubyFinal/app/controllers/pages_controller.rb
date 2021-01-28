class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home
    def home
        @langage = "french"
        @hello = Gemdub.hello(@langage)
    end
end
