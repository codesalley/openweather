module OpenWeather
  class Configuration
    attr_accessor :api_key
    attr_reader :weather_base_uri

    def initialize
      @api_key = nil
      @weather_base_uri = 'https://api.openweathermap.org/data/2.5/weather?'
    end
  end
end
