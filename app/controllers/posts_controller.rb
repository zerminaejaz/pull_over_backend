class PostsController < ApplicationController

  def index
    render json: Post.all
  end
  
  def show
    post = Post.find(params[:id])
    render json: post
  end

  def create
    post = Post.create(post_params)
    if post.valid?
        
        render json: post
    else
        render json: {errors: post.errors.full_messages}
    end
  end

def update
    post = Post.find(params[:id])
    post.update(post_params)
    render json: post
end

def destroy
    post = Post.find(params[:id])
    post.destroy
end

private

def post_params
    params.permit(:user_id, :price, :description, :case, :status, :latitude, :longitude )
end


end
