class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @user.update user_params
      redirect_to user_url(@user)
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @user.destroy
    redirect_to users_url(@user)
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :address)
    end
end
