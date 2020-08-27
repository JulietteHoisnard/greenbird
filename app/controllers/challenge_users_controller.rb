class ChallengeUsersController < ApplicationController

  def update
    @challenge = Challenge.find(params[:challenge_id])
    @user = current_user
    @challenge_user = ChallengeUser.where(user_id: @user.id, challenge_id: @challenge.id).first
    authorize @challenge_user

    @challenge_user.completed = true
    @challenge_user.save
    redirect_to dashboard_path(@user), notice: "You rock! Redirecting you back to your dashboard..."
  end
end
