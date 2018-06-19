class CreateEventPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_players do |t|
      t.integer :event_id
      t.integer :player_id

      t.timestamps
    end
  end
end
