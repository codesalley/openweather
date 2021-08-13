require "httparty"
require "json"
require_relative "helpers/helpers"
require "logger"

module OpenWeather
  class CurrentWeather
    @helper = Helpers.new
    def self.by_city(name: "", units: "standard", lang: "en")
      url = OpenWeather.configuration.weather_base_uri
      api_key = OpenWeather.configuration.api_key
      uri = @helper.name_to_url(url, name, api_key, units, lang)
      begin
        @response = HTTParty.get(uri)
      rescue => exception
        logger = Logger.new(STDOUT)
        logger.error("Network is required")
        return []
      end
      if @response.message == "Unauthorized" || @response.code == 404
        logger = Logger.new(STDOUT)
        logger.error("Api Key is required")
        return []
      end
      res = @helper.to_json(@response.body)
      return res
    end

    def self.by_city_id(id: "", units: "standard", lang: "en")
      url = OpenWeather.configuration.weather_base_uri
      api_key = OpenWeather.configuration.api_key
      uri = @helper.id_to_url(url, id, api_key, units, lang)
      begin
        @response = HTTParty.get(uri)
      rescue => exception
        logger = Logger.new(STDOUT)
        logger.error("Network is required")
        return []
      end
      if @response.message == "Unauthorized" || @response.code == 404
        logger = Logger.new(STDOUT)
        logger.error("Api Key is required")
        return []
      end
      res = @helper.to_json(@response.body)
      return res
    end

    def self.by_coords(coords: [], units: "standard", lang: "en")
      url = OpenWeather.configuration.weather_base_uri
      api_key = OpenWeather.configuration.api_key
      uri = @helper.cords_to_url(url, coords, api_key, units, lang)

      begin
        @response = HTTParty.get(uri)
      rescue => exception
        logger = Logger.new(STDOUT)
        logger.error("Network is required")
        return []
      end
      if @response.message == "Unauthorized" || @response.code == 404
        logger = Logger.new(STDOUT)
        logger.error("Api Key is required")
        return []
      end
      res = @helper.to_json(@response.body)
      return res
    end

    def self.by_zip(zipcode: "", country: "", units: "standard", lang: "en")
      url = OpenWeather.configuration.weather_base_uri
      api_key = OpenWeather.configuration.api_key
      uri = @helper.zipcode_to_url(url, zipcode, country, api_key, units, lang)
      begin
        @response = HTTParty.get(uri)
      rescue => exception
        logger = Logger.new(STDOUT)
        logger.error("Network is required")
        return []
      end
      if @response.message == "Unauthorized" || @response.code == 404
        logger = Logger.new(STDOUT)
        logger.error("Api Key is required")
        return []
      end
      res = @helper.to_json(@response.body)
      return res
    end
  end
end
