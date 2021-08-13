require 'json'
require 'open_weather'

class Helpers
  def to_json(data)
    unless data
      tmp = {}
      return JSON.parse(tmp)
    end
    JSON.parse data
  end

  def name_to_url(url, name, api_key, units, lang)
    "#{url}q=#{name}&appid=#{api_key}&lang=#{lang}&units=#{units}"
  end

  def id_to_url(url, name, api_key, units, lang)
    "#{url}id=#{name}&appid=#{api_key}&lang=#{lang}&units=#{units}"
  end

  def cords_to_url(url, coords, api_key, units, lang)
    "#{url}lat=#{coords[1]}&lon=#{coords[0]}&appid=#{api_key}&lang=#{lang}&units=#{units}"
  end

  def zipcode_to_url(url, zip, country, api_key, units, lang)
    "#{url}zip=#{zip},#{country}&appid=#{api_key}&lang=#{lang}&units=#{units}"
  end
end
