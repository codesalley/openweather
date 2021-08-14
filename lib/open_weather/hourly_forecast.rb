require 'httparty'
require 'open_weather'
require 'json'
require_relative 'helpers/helpers'
require 'logger'

module OpenWeather
  class HourlyForecast
    @helper = Helpers.new
    # helper params to return defferent urls "current_wether", "hourly"
    def self.by_city(name: '', units: 'standard', lang: 'en')
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url('hourly')
      OpenWeather::NetworkRequest.by_city(name: name, units: units, lang: lang)
    end

    def self.by_city_id(id: '', units: 'standard', lang: 'en')
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url('hourly')
      OpenWeather::NetworkRequest.by_city_id(id: id, units: units, lang: lang)
    end

    def self.by_coords(coords: [], units: 'standard', lang: 'en')
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url('hourly')
      OpenWeather::NetworkRequest.by_coords(coords: coords, units: units, lang: lang)
    end

    def self.by_find(coords: [], count: 3, units: 'standard', lang: 'en')
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url('hourly')
      OpenWeather::NetworkRequest.by_coords(coords: coords, count: count, units: units, lang: lang)
    end

    def self.by_zip(zipcode: '', country: '', units: 'standard', lang: 'en')
      OpenWeather.configuration.weather_base_uri = @helper.swtich_url('hourly')
      OpenWeather::NetworkRequest.by_zip(zipcode: zipcode, country: country, units: units, lang: lang)
    end
  end
end
