class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :call_to_action
      t.string :description
      t.string :link
      t.string :category
      t.string :infobox_title
      t.string :infobox_desc
      t.string :infobox_link
      t.string :impact_level
      t.integer :impact_co
      t.integer :impact_money
      t.string :impact_desc

      t.timestamps
    end
  end
end
