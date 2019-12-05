class PostsController < ApplicationController
    
    def 
        if !session['logged_in?']
            redirect_to("/login")
        end
        post = Post.find(params[:id])
        likes = post.likes + 1
        post.update({likes: likes})
        redirect_to "/", id: params[:object_id]
    end

end
