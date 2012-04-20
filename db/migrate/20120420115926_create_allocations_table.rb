class CreateAllocationsTable < ActiveRecord::Migration
  def self.up
    create_table :allocations do |t|
      t.integer   :property_id
      t.integer   :room_id
      t.date      :date
      t.decimal   :price,         :precision => 12, :scale => 2
      t.integer   :minimum_stay,  :default => 1
      t.integer   :quantity,      :default => 1

      # t.boolean  "active",           :default => true
    end

    add_index :allocations, :property_id
    add_index :allocations, :room_id
    add_index :allocations, :date
  end

  def self.down
    drop_table :facilities
  end
end
