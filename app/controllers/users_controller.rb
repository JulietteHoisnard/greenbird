class UsersController < ApplicationController
  before_action :set_user

  def dashboard
    @challenges_todo = ChallengeUser.where(completed: false)
    @challenges_done = ChallengeUser.where(completed: true)

    @challenge = @challenges_todo.first
  end

  def show
    @challenges_done = ChallengeUser.where(completed: true)
    # with the above line you can access and use data from the challenges the user has completed
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
    params.require(:user).permit(:email, :bio, :username, :country, :photo)
  end

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

end
