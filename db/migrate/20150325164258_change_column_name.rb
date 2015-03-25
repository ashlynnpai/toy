class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :books, :finished_at, :finished_on
  end
end
