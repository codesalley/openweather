require "httparty"
require "json"
require_relative "helpers/helpers"
require "logger"

module OpenWeather
  class CurrentWeather
    @helper = Helpers.new
    @url = "pro.openweathermap.org/data/2.5/forecast/hourly?"
    def self.by_city(name: "", units: "standard", lang: "en")
    end

    def self.by_city_id(id: "", units: "standard", lang: "en")
    end

    def self.by_coords(coords: [], units: "standard", lang: "en")
    end

    def self.by_zip(zipcode: "", country: "", units: "standard", lang: "en")
    end
  end
end
