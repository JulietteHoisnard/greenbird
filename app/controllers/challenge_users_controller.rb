class ChallengeUsersController < ApplicationController

  def update
    @challenge = Challenge.find(params[:challenge_id])
    @user = current_user
    @instance = ChallengeUser.where(user_id: @user.id, challenge_id: @challenge.id).first
    @instance.completed = true
    redirect_to dashboard_path(@user), notice: "Redirecting you back to your dashboard, you awesome person!"
  end
end
