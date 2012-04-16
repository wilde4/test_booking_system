class CreateFacilities < ActiveRecord::Migration
  def self.up
    create_table :facilities do |t|
      t.string  :name
      t.string  :description
    end
  end

  def self.down
    drop_table :facilities
  end
end
