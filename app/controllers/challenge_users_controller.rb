class ChallengeUsersController < ApplicationController
  before_action :set_challenge_user

  def update
    @challenge_user.completed = true
    @challenge_user.date_of_completion = Date.today
    @challenge_user.save
    sleep (3.0)
    redirect_to dashboard_path(@user)
  end


  def update_opt
    @challenge_user.opt_completed = true
    @challenge_user.save
    sleep (3.0)
    redirect_to challenge_path(@challenge)
  end

  private

  def set_challenge_user
    @challenge = Challenge.find(params[:challenge_id])
    @user = current_user
    @challenge_user = ChallengeUser.where(user_id: @user.id, challenge_id: @challenge.id).first
    authorize @challenge_user
  end
end
