class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :category
      t.integer :stars
      t.string :phone_number

      t.timestamps
    end
  end
end
