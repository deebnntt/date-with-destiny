class Foursquare < ApplicationRecord

    # def self.search_venues(text)
    #     client.search_venues(:ll => '36.142064,-86.816086', :query => text)
    # end

    def self.client
        @client ||= Foursquare2::Client.new(:client_id => 'ERRF2FFXVJG2FS3J3Q1V20VMQX1CAVCKVWIJ0YCQEBMNHOUG', :client_secret => 'LZK2WSFZAQARZC2ADXV2PCDDFL3Q2GBA1WHCJJBT5MNWTGQ3', :api_version => '20120609')
    end
end
