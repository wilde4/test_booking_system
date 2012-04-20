class CreatePropertiesTable < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.string  :name
      t.string  :lat
      t.string  :lng
      t.string  :cached_slug
      t.text    :description
      t.text    :location_details
      t.text    :travel_details
      t.text    :cancellation_policy
      t.text    :booking_policy
      t.text    :terms_and_conditions_policy
    end
  end

  def self.down
    drop_table :properties
  end
end