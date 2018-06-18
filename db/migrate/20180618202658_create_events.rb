class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.datetime :date
      t.integer :host_id

      t.timestamps
    end
  end
end
