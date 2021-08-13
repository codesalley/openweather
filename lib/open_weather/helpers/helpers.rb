require "json"
require "open_weather"

class Helpers
  def to_json(data)
    if !data
      tmp = {}
      return JSON.parse(tmp)
    end
    res = JSON.parse data

    res
  end

  def name_to_url(url, name, apiKey, units, lang)
    res = "#{url}q=#{name}&appid=#{apiKey}&lang=#{lang}&units=#{units}"
    return res
  end

  def id_to_url(url, name, apiKey, units, lang)
    res = "#{url}id=#{name}&appid=#{apiKey}&lang=#{lang}&units=#{units}"
    return res
  end

  def cords_to_url(url, coords, apiKey, units, lang)
    res = "#{url}lat=#{coords[1]}&lon=#{coords[0]}&appid=#{apiKey}&lang=#{lang}&units=#{units}"
    return res
  end

  def zipcode_to_url(url, zip, country, apiKey, units, lang)
    res = "#{url}zip=#{zip},#{country}&appid=#{apiKey}&lang=#{lang}&units=#{units}"
    return res
  end
end
