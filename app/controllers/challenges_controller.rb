class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :edit, :update, :destroy]

  def index
    @challenges = Challenge.all
  end

  def show
    @user = current_user

    @user.challenges = Challenge.all

    @challenges_todo = ChallengeUser.where(user_id: current_user.id, completed: false).order(:challenge_id)
    @challenges_done = ChallengeUser.where(user_id: current_user.id, completed: true).order(:challenge_id)
    @all_challenges = ChallengeUser.where(user_id: current_user.id).order(:challenge_id)

    @instance = @all_challenges.where(challenge_id: @challenge.id).first
    # @instance makes attributes like completed and opt_completed accessible


    case @challenge.category
    when "home"
      @classtagcolor = "tag_home"
    when "zero waste"
      @classtagcolor = "tag_zero_waste"
    when "transport"
      @classtagcolor = "tag_transport"
    when "food"
      @classtagcolor = "tag_food"
    when "civic action"
      @classtagcolor = "tag_civic_action"
    else
      "error in label name"
    end
  end

  def new
    @challenge = Challenge.new
    authorize @challenge
  end

  def create
    @challenge = Challenge.new(challenge_params)
    authorize @challenge

    if @challenge.save
      redirect_to @challenge, notice: 'Your challenge was successfully created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @challenge.update(challenge_params)
      redirect_to @challenge
    else
      render :edit
    end
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
    authorize @challenge
  end

end
