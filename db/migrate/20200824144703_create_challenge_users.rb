class CreateChallengeUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :challenge_users do |t|
      t.date :date_of_completion
      t.boolean :completed, default: false
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
