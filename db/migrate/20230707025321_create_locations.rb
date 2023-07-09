class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :type
      t.string :address
      t.string :city
      t.string :neighborhood
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
