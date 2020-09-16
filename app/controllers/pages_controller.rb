class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    if @user = current_user

      @user.challenges = Challenge.all
      @challenges_todo = ChallengeUser.where(user_id: current_user.id, completed: false).order(:challenge_id)

      @challenge_todo = @challenges_todo.first

      if @challenge_todo
        @challenge = Challenge.find(@challenge_todo.challenge_id)
      end

    else
      @challenge = Challenge.first
    end
  end

  def about
  end
end
