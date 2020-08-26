class UsersController < ApplicationController
  before_action :set_user

  def dashboard
  #  @challenge_user
  #  @challenge = Challenge.find(params[:challenge_id])
    @challenges = @user.challenges
  #  @challenge_user = @challenges.first
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
    params.require(:user).permit(:email, :bio, :username, :country, :photo)
  end

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end


end

# PSEUDOCODE

# available_challenges = @user.challenge_users.completed == false
# --> @challenges = @user.challenge_user.completed == false
# --> @challenge = @challenges.first

# finished_challenges = @user.challenge_users.completed == true

# finished_challenges.count for Challenges done






