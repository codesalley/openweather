# OpenWeather

Open Weather Gem, A wrapper around open weather api, makes working with weather fun.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'open_weather'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install open_weather

## Usage

### Configuration

Add api key in config file `config/initializers/open_weather.rb`

```ruby
OpenWeather.config do |config|
  config.api_key = 'your key'
end
```

## Get Current Weather

params overview

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
  ```

### Get weather by zipcode and country code. more info -> [openweathermap.org](https://openweathermap.org/current#zip)

- ```ruby
    OpenWeather::CurrentWeather.by_zip(zipcode: 94040, country: "us")
     #params: zipcode -> 94040, lang -> 'en', units -> "standard"
  ```

### Get Weather by geographic coordinates[lon, lat]. more info -> [openweathermap.org](https://openweathermap.org/current#geo)

- ```ruby
      OpenWeather::CurrentWeather.by_coords(coords: [-0.8393, 9.40078])
      #params: corods -> [lon, lat], lang -> 'en', units -> "standard"
  ```

### Get weather by city id. more info -> [openweathermap.org](https://openweathermap.org/current#cityid)

- ```ruby
    OpenWeather::CurrentWeather.by_city_id(id: 2294877)
     #params: id -> 2294877, lang -> 'en', units -> "standard"
  ```

## Follow me √

[Twitter ≈> \_\_salley](https://twitter.com/__salley)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/codesalley/openweather.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
