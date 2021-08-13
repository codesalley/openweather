require "httparty"
require "json"
require_relative "helpers/helpers"

module OpenWeather
  class CurrentWeather
    @helper = Helpers.new
    def self.by_city(name, units = "standard", lang = "en")
      @url = OpenWeather.configuration.weather_base_uri
      @api_key = OpenWeather.configuration.api_key
      uri = @helper.to_url_string(@url, name, @api_key, units, lang)
      response = HTTParty.get(uri)
      res = @helper.to_json(response.body)
      return res
    end

    def self.by_city_id(id)
      @url = OpenWeather.configuration.weather_base_uri
      @api_key = OpenWeather.configuration.api_key
      uri = @helper.to_id_string(@url, id, @api_key, units, lang)
      res = @helper.to_json(response.body)
      return res
    end

    def self.by_coords
      return "by cords"
    end

    def self.by_zip
      return "by zip"
    end
  end
end
