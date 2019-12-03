class ApplicationController < ActionController::Base
    
    def register
        @new_puppy = Puppy.new
    end

    def create
        if !Puppy.find_by({email: params[:puppy][:email]})
            if params[:password] == params[:repeated_password]
                Puppy.create(allowed_params[:puppy])
            else
                puts "Your passwords did not match!"
            end
        else
            puts "That email already exists!"
        end
        redirect_to('/login')
    end

    def login
        puppy = Puppy.find_by({email: params[:email]})
        if puppy
            if puppy.authenticate(params[:password])
                session['logged_in?'] = true
            end
        else
            puts "That email has not been found!"
        end
        
    end

    def allowed_params
        params.permit({
            puppy:[
                :name,
                :breed,
                :age,
                :email,
                :password,
            ]
        })
    end
end
