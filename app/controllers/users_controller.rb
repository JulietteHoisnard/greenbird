class UsersController < ApplicationController
  before_action :set_user

  def dashboard
    @user.challenges = Challenge.all

    @challenges_todo = ChallengeUser.where(user_id: current_user.id, completed: false).order(:challenge_id)
    @challenges_done = ChallengeUser.where(user_id: current_user.id, completed: true).order(:challenge_id)

    @challenge = @challenges_todo.first

    @opt_challenges_done = ChallengeUser.where(user_id: current_user.id, opt_completed: true).order(:challenge_id)

  end

  def show
    @user.challenges = Challenge.all
    @challenges_done = ChallengeUser.where(user_id: current_user.id, completed: true).order(:challenge_id)
    # with the above line you can access and use data from the challenges the user has completed

    @score = 0
    @challenges_done.each do |challenge|
      @score += challenge.impact_co
    end

    @score = @score / 365

    @data = Hash.new
    CSV.foreach("db/co-emissions-per-capita.csv", headers: true) do |row|
      if row['Entity'] == 'World'
        if row['Year'].to_i >= 1960
          @data[row['Year']] = row['Per capita CO₂ emissions (tonnes)']
        end
      end
    end
    p @data
    @datauser = Hash.new
    CSV.foreach("db/co-emissions-per-capita.csv", headers: true) do |row|
      if row['Entity'] == @user.country
        if row['Year'].to_i >= 1960
          @datauser[row['Year']] = row['Per capita CO₂ emissions (tonnes)']
        end
      end
    end
    p @datauser


    @datachallengeuser = Hash.new
    @datatarget = Hash.new
    counter = 0
    co2 = @datauser['2017'].to_f
    @datatarget[counter] = 2
    @datachallengeuser[counter] = co2
    @challenges_done.each do |challenge|
      co2 = co2 - Challenge.find(challenge.challenge_id).impact_co/1000
      p co2
      counter += 1
      p counter
      @datatarget[counter] = 2
      @datachallengeuser[counter] = co2
    end
    p @datachallengeuser
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
