require "open_weather/Configuration"
require "open_weather/version"
require "open_weather/current_weather"
require "open_weather/hourly_forecast"

module OpenWeather
  class << self
    attr_accessor :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def config
      yield(configuration)
    end
  end
end
