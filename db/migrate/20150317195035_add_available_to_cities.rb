class AddAvailableToCities < ActiveRecord::Migration
  def change
    add_column :cities, :available, :boolean, :default => true
  end
end
