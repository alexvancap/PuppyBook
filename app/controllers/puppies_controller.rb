class PuppiesController < ApplicationController
    def index

    end

    def show
        if !session['logged_in?'] == true
            redirect_to("/login")
        end
        @puppy = Puppy.find(session[:user_id])
    end

    def friends
        @puppy = Puppy.find(session[:user_id])
        @friends = @puppy.friends
    end

end
