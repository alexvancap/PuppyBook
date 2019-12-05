class ApplicationController < ActionController::Base
    
    def index
        if !session['logged_in?']
            redirect_to("/login")
        else
            puppy = Puppy.find(session[:user_id])
            @posts = []
            puppy.friendships.each do |friendship|
                @posts << Post.where(puppy_id: friendship.friend_id)
            end
        end
    end

    def register
        @new_puppy = Puppy.new
    end

    def create
        if !session['logged_in?']
            redirect_to("/login")
        else
            if !Puppy.find_by({email: params[:email]})
                if params[:password] == params[:repeated_password]
                    Puppy.create(allowed_params)
                else
                    flash[:password] = "Your passwords did not match!"
                end
            else
                flash[:email] =  "That email already exists!"
            end
            redirect_to('/login')
        end
    end

    def login
        puppy = Puppy.find_by({email: params[:email]})
        if puppy
            if puppy.authenticate(params[:password])
                session['logged_in?'] = true
                session['user_id'] = puppy.id
                redirect_to("/puppies/#{puppy.id}")
            else
                flash[:password] = "Wrong password!"
            end
        else
            flash[:email] = "That email doesn't exist"
        end
    end

    def allowed_params
        params.permit([
                :name,
                :breed,
                :age,
                :email,
                :password,
    ])
    end

    def logout
        session['logged_in?'] = false
        redirect_to('/login')
    end

    def search
        @found = Puppy.all.select do |puppy|
            puppy.name.downcase.include?(params[:search])
        end
    end
end
