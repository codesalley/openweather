require "httparty"
require "json"
require_relative "helpers/helpers"
require "logger"

module OpenWeather
  class CurrentWeather
    # helper params to return defferent urls "current_wether", "hourly"
    @helper = Helpers.new
    def self.by_city(name: "", units: "standard", lang: "en")
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url("current_wether")
      OpenWeather::NetworkRequest.by_city(name: name, units: units, lang: lang)
    end

    def self.by_city_id(id: nil, units: "standard", lang: "en")
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url("current_wether")
      OpenWeather::NetworkRequest.by_city_id(id: id, units: units, lang: lang)
    end

    def self.by_coords(coords: [], units: "standard", lang: "en")
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url("current_wether")
      OpenWeather::NetworkRequest.by_coords(coords: coords, units: units, lang: lang)
    end

    def self.by_zip(zipcode: "", country: "", units: "standard", lang: "en")
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url("current_wether")
      OpenWeather::NetworkRequest.by_zip(zipcode: zipcode, country: country, units: units, lang: lang)
    end
  end
end
