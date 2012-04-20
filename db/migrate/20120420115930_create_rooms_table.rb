class CreateRoomsTable < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.integer :property_id
      t.string  :name
      t.decimal :default_price, :precision => 12, :scale => 2
      t.text    :description
      t.string  :quantity
      t.string  :cached_slug
    end
  end

  def self.down
    drop_table :rooms
  end
end