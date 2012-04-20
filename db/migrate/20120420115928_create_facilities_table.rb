class CreateFacilitiesTable < ActiveRecord::Migration
  def self.up
    create_table :facilities do |t|
      t.string  :name
      t.string  :description
      t.string  :cached_slug
    end
  end

  def self.down
    drop_table :facilities
  end
end
