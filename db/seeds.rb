@property = BookingSystem::Property.create!({
  :name                     => "Albion Heights",
  :lat                      => "53.362692",
  :lng                      => "-2.002516",
  :description              => "A lovely place to stay.",
  :location_details         => "Edge of the Peak District.",
  :travel_details           => "Accessible by road, rail or air.",
  :cancellation_policy      => "Cancelling within 48 hours incurs no charge.",
  :booking_policy           => "We accept all major credit and debit cards.",
  :terms_and_conditions_policy => "No pets. No smoking."
})

%w(Single Double Twin Family).each do |room_type|
  @room = @property.rooms.create!({
    :name           => "#{room_type} Room",
    :default_price  => 70.0,
    :description    => "A delightful #{room_type.downcase} room.",
    :quantity       => "2"
  })

  @room.create_allocations!
end