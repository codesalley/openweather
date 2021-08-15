# OpenWeather

Open Weather Gem, A wrapper around open weather API, makes working with weather fun.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'open_weather_sdk'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install open_weather_sdk

## Usage

### Configuration

Create a config file in initializers and add an API key `config/initializers/open_weather.rb`

```ruby
OpenWeather.config do |config|
  config.api_key = 'your key'
end
```

## Current Weather Data

Params Overview

```h
  ||- name -> string
  ||- id -> string || integer, read more about city id's on https://openweathermap.org/current#cityid
  ||- coords -> array [lon, lat]
  ||- zipcode -> string || integer
  ||- country -> string: country code eg: GH -> Ghana
  |[optional]|- lang -> string: eg: en -> english, fr -> french
  |[optional]|- units -> string: eg: standard, metric, imperial

```

### Get weather by city name

- ```ruby
  OpenWeather::CurrentWeather.by_city(name: "london") #params: name -> "london", lang -> 'en', units -> "standard"
  return => {"coord"=>{"lon"=>-0.1257, "lat"=>51.5085}, "weather"=>[{"id"=>804, "main"=>"Clouds", "description"=>"overcast clouds", "icon"=>"04n"}], "base"=>"stations", "main"=>{"temp"=>291.69, "feels_like"=>291.66, "temp_min"=>289.32, "temp_max"=>293.05, "pressure"=>1022, "humidity"=>79}, "visibility"=>10000, "wind"=>{"speed"=>3.6, "deg"=>220}, "clouds"=>{"all"=>97}, "dt"=>1628885709, "sys"=>{"type"=>2, "id"=>2019646, "country"=>"GB", "sunrise"=>1628829784, "sunset"=>1628882870}, "timezone"=>3600, "id"=>2643743, "name"=>"London", "cod"=>200}
  ```

### Get weather by zipcode and country code. more info -> [openweathermap.org](https://openweathermap.org/current#zip)

- ```ruby
    OpenWeather::CurrentWeather.by_zip(zipcode: 94040, country: "us")
     #params: zipcode -> 94040, lang -> 'en', units -> "standard"
  ```

### Get weather by geographic coordinates[lon, lat]. more info -> [openweathermap.org](https://openweathermap.org/current#geo)

- ```ruby
      OpenWeather::CurrentWeather.by_coords(coords: [-0.8393, 9.40078])
      #params: corods -> [lon, lat], lang -> 'en', units -> "standard"
  ```

### Get weather by city id. more info -> [openweathermap.org](https://openweathermap.org/current#cityid)

- ```ruby
    OpenWeather::CurrentWeather.by_city_id(id: 2294877)
     #params: id -> 2294877, lang -> 'en', units -> "standard"
  ```

## Hourly Forecast 4 days [Requires Pro Api]

```ruby
    OpenWeather::HourlyForecast.by_city(# name, units, lang)
    OpenWeather::HourlyForecast.by_city_id(# id, units, lang)
    OpenWeather::HourlyForecast.by_coords(# [lon lat], units, lang)
    OpenWeather::HourlyForecast.by_find(# [lon, lat], count, units, lang)
    OpenWeather::HourlyForecast.by_zip(# zipcode, units, lang)
```

## Follow me √

[Twitter ≈> \_\_salley](https://twitter.com/__salley)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/codesalley/openweather.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
