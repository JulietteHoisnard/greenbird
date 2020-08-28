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
    @challenges_done = ChallengeUser.where(completed: true)
    # with the above line you can access and use data from the challenges the user has completed
    @data = Hash.new
    CSV.foreach("db/co-emissions-per-capita.csv", headers: true) do |row|
      if row['Entity'] == 'World'
        if row['Year'].to_i >= 1950
          @data[row['Year']] = row['Per capita CO₂ emissions (tonnes)']
        end
      end
    end
    p @data
    @datauser = Hash.new
    CSV.foreach("db/co-emissions-per-capita.csv", headers: true) do |row|
      if row['Entity'] == @user.country
        if row['Year'].to_i >= 1950
          @datauser[row['Year']] = row['Per capita CO₂ emissions (tonnes)']
        end
      end
    end
    p @datauser
    @badge1 = "https://image.flaticon.com/icons/svg/814/814513.svg"
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
