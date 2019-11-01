class UsersController < ApplicationController
  has_many :posts

  def index
    render json: User.all
  end
  
  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)
    if user.valid?
        payload = {user_id: user.id}
        token = JWT.encode(payload, secret, true, 'HS256')
        render json: {user: user, token: token}
    else
        render json: {errors: user.errors.full_messages}
    end
  end

def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
end

def destroy
    user = User.find(params[:id])
    user.destroy
end

private

def user_params
    params.permit(:username, :password, :picture, :number, :location)
end


end
