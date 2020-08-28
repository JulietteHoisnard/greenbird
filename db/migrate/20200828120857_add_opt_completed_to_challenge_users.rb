class AddOptCompletedToChallengeUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :challenge_users, :opt_completed, :boolean, default: false
  end
end
