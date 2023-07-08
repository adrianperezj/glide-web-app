class ChangeColumnNameAgain < ActiveRecord::Migration[7.0]
  def change
    rename_column :locations, :location_type, :category
  end
end
