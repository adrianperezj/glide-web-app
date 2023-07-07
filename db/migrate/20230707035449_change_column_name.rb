class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :locations, :type, :location_type
  end
end
