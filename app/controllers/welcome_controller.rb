class WelcomeController < ApplicationController
    def index
        render json: {hello: "babye"}       #Rendered a page when Deployed on Heroku
    end
end
