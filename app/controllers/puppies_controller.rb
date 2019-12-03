class PuppiesController < ApplicationController
    def index

    end

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
    end

    def login

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

    def show    
        @puppy = Puppy.find params[:id]  
    end 

end
