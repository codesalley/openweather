# frozen_string_literal: true

require "open_weather/version"
require "open_weather/current_weather"
require "open_weather/Configuration"
require "open_weather/api_client"

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
