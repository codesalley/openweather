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

  def to_url_string(url, name, apiKey, units, lang)
    res = "#{url}q=#{name}&appid=#{apiKey}&lang=#{lang}&units=#{units}"
    return res
  end
end
