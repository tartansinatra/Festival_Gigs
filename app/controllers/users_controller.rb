class UsersController < ApplicationController

  # before_action :authenticate_user!, except: [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user.create(user_params)
    redirect_to users_path
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to(users_path)
  end

  def destroy
    user.destroy
    redirect_to(gigs_path)
  end

  private
  def user_params
    params.require(:user).permit(:name, :role)
  end


end