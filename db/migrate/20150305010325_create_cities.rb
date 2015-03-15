class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :size
      t.decimal :composite, :precision => 4, :scale => 1
      t.decimal :grocery, :precision => 4, :scale => 1
      t.decimal :housing, :precision => 4, :scale => 1
      t.integer :population    
      t.decimal :unemployment, :precision => 3, :scale => 1
      t.timestamps
    end
  end
end
