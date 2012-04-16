class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.string  :name
      t.string  :lat
      t.string  :lng
    end
  end

  def self.down
    drop_table :properties
  end
end