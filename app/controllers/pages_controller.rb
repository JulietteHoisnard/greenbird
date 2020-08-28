class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if @user = current_user

      @user.challenges = Challenge.all
      @challenges_todo = ChallengeUser.where(user_id: current_user.id, completed: false)

      @challenge_todo = @challenges_todo.first
      @challenge = Challenge.find(@challenge_todo.challenge_id)

    else
      @challenge = Challenge.first
    end

  end
end
