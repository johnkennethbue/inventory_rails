class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :game_title
      t.text :description
      t.text :platform
      t.string :quantity

      t.timestamps
    end
  end
end
