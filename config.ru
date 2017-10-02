# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
Hashie.logger = Logger.new('/dev/null')
run Rails.application
