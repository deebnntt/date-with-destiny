class Foursquare < ApplicationRecord

    # def self.search_venues(text)
    #     client.search_venues(:ll => '36.142064,-86.816086', :query => text)
    # end

    # def self.client
    #     @client ||= Foursquare2::Client.new(:client_id => 'ERRF2FFXVJG2FS3J3Q1V20VMQX1CAVCKVWIJ0YCQEBMNHOUG', :client_secret => 'LZK2WSFZAQARZC2ADXV2PCDDFL3Q2GBA1WHCJJBT5MNWTGQ3', :api_version => '20120609')
    # end

    def self.client
        @client ||= Foursquare2::Client.new(:client_id => '5DIN4YPJ52AAIMKKKMJ4VWOZHMQ3THYRLWICKM1UBPBFF1A3', :client_secret => 'Y1LO1QFMHEZMZRGX5QGKQVW4LLAHCTHKX2PYWXYYOCCNKRMK', :api_version => '20120609')
    end

    def self.find_venue(zipcode)
      zip_array = Venue.all.select { |venue| venue.zipcode == zipcode }
      zip_array.sample
    end

    def self.make_params(number)
      {name: Foursquare.client.venue(number)[:name],
      street_address: Foursquare.client.venue(number)[:location][:address],
      city:  Foursquare.client.venue(number)[:location][:city],
      state:  Foursquare.client.venue(number)[:location][:state],
      zipcode:  Foursquare.client.venue(number)[:location][:postalCode],
      category:  Foursquare.client.venue(number)[:categories][0][:name]}
    end

end
