module OpenWeather
  module CurrentWeather
    def self.by_city(name, units = "standard", lang = "eng")
      return "get weather by city #{name} #{units}  #{lang}"
    end

    def self.by_city_id
      return "by city id"
    end

    def self.by_coords
      return "by cords"
    end

    def self.by_zip
      return "by zip"
    end
  end
end
