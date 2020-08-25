class UsersController < ApplicationController
  before_action :set_user

  def dashboard
  end

  def show
    @challenges = @user.challenges
  end

  def edit
  end

  def update
    if @user == current_user
      @user.update(user_params)
      redirect_to user_path(@user)
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :bio, :username, :photo)
  end

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end


end
