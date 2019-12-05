class PostsController < ApplicationController
    
    def like
        post = Post.find(params[:id])
        likes = post.likes + 1
        post.update({likes: likes})
        redirect_to ("/puppies")
    end

end
