class PuppiesController < ApplicationController
    def index
       
    end

    def show
        if !session['logged_in?']
            redirect_to("/login")
        else
            @puppy = Puppy.find(params[:id])
        end
    end

    def friends
        if !session['logged_in?']
            redirect_to("/login")
        else
            @puppy = Puppy.find(session[:user_id])
            @friends = @puppy.friends
        end
    end

    def unfriend
        if !session['logged_in?']
            redirect_to("/login")
        else
            matchup = Friendship.find_by({puppy_id: params[:id], friend_id: params[:friend_id]})
            Friendship.destroy(matchup.id)
            redirect_to("#{puppy_path}/friends")
        end
    end

    def edit_profile
    end

    def edit_profile_controller
        if !session['logged_in?']
            redirect_to("/login")
        else
            user = Puppy.find(params[:id])
            if params[:password]
                new_password = BCrypt::Password.create(params[:password])
                user.update({password_digest: new_password })
            end
            if params[:email]
                user.update({email: params[:email]})
            end
            if params[:bio]
                user.update({bio: params[:bio]})
            end
            if params[:picture]
                user.update({picture: params[:picture]})
            end
            redirect_to '/login'
        end
    end

    def add_friend
        if !Friendship.find_by(puppy_id: session[:user_id], friend_id: params[:friend_id])
            Friendship.create(puppy_id: session[:user_id], friend_id: params[:friend_id])
        end
        redirect_to("/puppies/#{params[:friend_id]}")
    end



end