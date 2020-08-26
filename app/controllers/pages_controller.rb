class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
    # We need to change @challenge to the trial challenge
    @challenge = Challenge.first
  end
end
