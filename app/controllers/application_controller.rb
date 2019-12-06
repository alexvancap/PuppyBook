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
        if !Puppy.find_by({email: params[:email]})
            if params[:password] == params[:repeated_password]
                new_pub = Puppy.create(allowed_params)
            else
                flash[:password] = "Your passwords did not match!"
            end
            if params[:picture] == ""
                 default_pic = "http://www.citydogshare.org/assets/default_dog-f1f5e5aa031ad0a956a936dc4fb4bde95c712f2ad1f99e883b5bc58d22aec668.jpg"
                 new_pub.update({picture: default_pic})
            end
        else
            flash[:email] =  "That email already exists!"
        end
        redirect_to('/login')
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
            if puppy != Puppy.find(session[:user_id])
                puppy.name.downcase.include?(params[:search])
            end
        end
    end
end
