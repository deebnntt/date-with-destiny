# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

client = Foursquare2::Client.new(:client_id => 'ERRF2FFXVJG2FS3J3Q1V20VMQX1CAVCKVWIJ0YCQEBMNHOUG'
, :client_secret => 'LZK2WSFZAQARZC2ADXV2PCDDFL3Q2GBA1WHCJJBT5MNWTGQ3'
)
