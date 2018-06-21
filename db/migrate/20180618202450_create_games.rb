class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :objectid
      t.string :title
      t.text :description
      t.integer :minplayers
      t.integer :maxplayers
      t.integer :age
      t.integer :yearpublished
      t.string :designer
      t.string :image

      t.timestamps
    end
  end
end
