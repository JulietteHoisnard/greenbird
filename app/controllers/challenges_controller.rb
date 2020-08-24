class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :edit, :update, :destroy]

  def index
    @challenges = Challenge.all
  end

  def show
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      redirect_to @challenge, notice: 'Your challenge was successfully created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @challenge.update(challenge_params)
    redirect_to @challenge
  end

  def destroy
    @challenge.destroy
    redirect_to challenges_path
  end

  private

  def challenge_params
    params.require(:challenge).permit(:title, :call_to_action, :description, :category, :impact_level, :impact_co)
  end

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

end
