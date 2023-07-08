class AddColumnToLocation < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :subcategory, :string
  end
end
