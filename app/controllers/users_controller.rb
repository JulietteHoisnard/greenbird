class UsersController < ApplicationController
  before_action :set_user, except: [:index, :addfriend]

  def index
    @users = policy_scope(User).order(username: :desc)
    @user = current_user

    friendships = Friendship.where("user_id = ? OR friend_user_id = ?", current_user.id, current_user.id)
    @friends = User.where(id: friendships.pluck(:user_id, :friend_user_id).flatten - [current_user.id])
  end

  def dashboard
    @user.challenges = Challenge.all

    @challenges_todo = ChallengeUser.where(user_id: current_user.id, completed: false).order(:challenge_id)
    @challenges_done = ChallengeUser.where(user_id: current_user.id, completed: true).order(:challenge_id)

    @challenge = @challenges_todo.first

    @opt_challenges_done = ChallengeUser.where(user_id: current_user.id, opt_completed: true).order(:challenge_id)

    # @today_done = @challenges_done.where(date_of_completion: Date.today).first
    # @yesterday_done = @challenges_done.where(date_of_completion: Date.today - 1).first

    streak


    @score = 0
      @challenges_done.each do |challenge|
      @score += challenge.challenge.impact_co
    end

    @score = @score / 365

  end

  def show
    @user.challenges = Challenge.all
    @challenges_done = ChallengeUser.where(user_id: @user.id, completed: true).order(:challenge_id)
    # with the above line you can access and use data from the challenges the user has completed

    #GRAPH CO2 EMISSION PER COUNTRY
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

    #GRAPH CO2 SAVINGS PER USER
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

    #FRIENDSHIP
    friendships = Friendship.where("user_id = ? OR friend_user_id = ?", @user.id, @user.id)
    @friends = User.where(id: friendships.pluck(:user_id, :friend_user_id).flatten - [@user.id])

    #PIECHART
    @challengestest = @user.challenges.where(id: ChallengeUser.where(user_id: @user.id, completed: true).pluck(:challenge_id).flatten)
    #colors of pie chart
    category_colors = {"food"=> "#ea526f","home"=> "#8CC34A", "transport"=> "#FBA870", "zero_waste"=> "#183059", "civic_action"=> "#9FBBCC"}
    @colors = []
    @challengestest.group(:category).count.each do |category, _|
      @colors << category_colors[category.split(' ').join('_')]
    end    
    
    #changes for popup badges start here
    respond_to do |format|
      format.html
      format.json { render json: { challenges_done: @challenges_done } }
    end

  end

  def edit
  end

  def update
    if @user == current_user
      @user.update(user_params)
      redirect_to user_path(@user)
    end
  end

  def addfriend
    @friend_user = User.find(params[:friend_user_id])
    @friendship = Friendship.new(user_id: current_user.id, friend_user_id: @friend_user.id)
      if @friendship.save
        redirect_to user_path(current_user), notice: 'Your friend was successfully added!'
      else
        render :addfriend
      end
    authorize @friend_user
  end

  # def deletefriend

  # end

  private

  def user_params
    params.require(:user).permit(:email, :bio, :username, :country, :photo)
  end

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def streak
    today = Date.today

    instances_found = ChallengeUser.where.not(date_of_completion: [nil]).where(user_id: current_user.id).order(:date_of_completion)
    dates_array = instances_found.map { |instance| instance.date_of_completion }

    unique_dates = dates_array.uniq # [ 31st Aug, 1st Sept, 2nd Sept ]

    @streak = unique_dates.empty? ? 0 : 1

    unique_dates.each_with_index do |date, index|
      following_date = unique_dates[index + 1]

      if following_date
        difference = (following_date - date).to_i

        if difference == 1
          @streak += 1
        end

      end

      # for later:
      # check if difference from next date to this date => 1
      # if yes => increase @streak + 1
      # if no => todo later

    end

    @streak

  end

end
