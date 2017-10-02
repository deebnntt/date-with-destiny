#
# array_of_numbers = Foursquare.client.search_venues(:ll => '40.731123, -73.997773', radius: 6000, :query => 'dinner')[:venues].map do |venue|
#     venue[:id]
# end

# array_of_numbers = Foursquare.client.search_venues(:ll => '40.731123, -73.997773', radius: 6000 )[:venues].map do |venue|
#     venue[:id]
# end.select do |id|
#   if Foursquare.client.venue(id)[:category]
#     Foursquare.client.venue(id)[:category][0][:name].include?('
#       Restaurant')
#   end
# end

array_of_numbers = Foursquare.client.search_venues(:ll => '40.731123, -73.997773', radius: 6000, categoryId: "4d4b7105d754a06374d81259")[:venues].map do |venue|
     venue[:id]
 end

# => array of ids that we can put in the seeds.
array_of_numbers.each do |num|
  Venue.create(Foursquare.make_params(num))
end
