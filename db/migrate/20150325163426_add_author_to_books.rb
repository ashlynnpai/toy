class AddAuthorToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author, :string
    add_column :books, :description, :text
    add_column :books, :amazon_id, :string
  end
end
