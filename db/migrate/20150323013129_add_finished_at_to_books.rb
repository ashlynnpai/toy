class AddFinishedAtToBooks < ActiveRecord::Migration
  def change
    add_column :books, :finished_at, :datetime, :default => nil
  end
end
