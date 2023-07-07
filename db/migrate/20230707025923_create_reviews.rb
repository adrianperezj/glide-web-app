class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :photo
      t.string :comment
      t.float :meal_cost
      t.float :coffee_cost
      t.float :rent_cost
      t.float :beer_cost
      t.integer :noise_level
      t.integer :safety
      t.integer :internet_speed
      t.integer :family_zone
      t.integer :nightlife
      t.integer :pet_friendly
      t.integer :restaurants_qty
      t.integer :shopping
      t.boolean :metro
      t.boolean :bike
      t.boolean :bus
      t.boolean :uber
      t.boolean :dealer
      t.references :user, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
