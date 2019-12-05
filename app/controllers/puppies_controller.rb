class PuppiesController < ApplicationController
    def index
       
    end

    def show
        if !session['logged_in?'] == true
            redirect_to("/login")
        end
        @puppy = Puppy.find(params[:id])
    end

    def friends
        if !session['logged_in?'] == true
            redirect_to("/login")
        end
        @puppy = Puppy.find(session[:user_id])
        @friends = @puppy.friends
    end

    def unfriend
        if !session['logged_in?'] == true
            redirect_to("/login")
        end
        matchup = Friendship.find_by({puppy_id: params[:id], friend_id: params[:friend_id]})
        Friendship.destroy(matchup.id)
        redirect_to("#{puppy_path}/friends")
    end

    def edit_profile
        if !session['logged_in?'] == true
            redirect_to("/login")
        end

    end

end
