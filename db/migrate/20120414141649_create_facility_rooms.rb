class CreateFacilityRooms < ActiveRecord::Migration
  def self.up
    create_table :facility_rooms do |t|
      t.integer   :facility_id
      t.integer   :room_id
    end
  end

  def self.down
    drop_table :facility_rooms
  end
end