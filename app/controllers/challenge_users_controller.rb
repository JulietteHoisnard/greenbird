class ChallengeUsersController < ApplicationController

  def update
    @challenge = Challenge.find(params[:id])
    @user = current_user
    @challenge_user = ChallengeUser.where(user_id: @user.id, challenge_id: @challenge.id)
    @challenge_user.completed = true
  end
end
