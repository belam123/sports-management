class UsersController < ApplicationController
    def create
      user = User.create(user_params)
      if user.valid?
        render json: { message: "Success" }, status: :created, location: user_url(user)
      else
        render json: { error: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
  end
  