require 'open_weather'
require 'httparty'
require 'json'

RSpec.configure do |config|
  # config.before(:all) do
  #   OpenWeather.config do |con|
  #     con.api_key = "api key"
  #   end
  # end

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
