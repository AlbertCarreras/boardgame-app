class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :address
      t.string :city
      t.string :country
      t.string :email
      t.string :photo

      t.timestamps
    end
  end
end
