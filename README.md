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

Add api key in config file `config/initializers/openweather.rb`

```
OpenWeather.configuration.api_key = 'your key'

```

or

```
OpenWeather.config do |config|
  config.api_key = 'xssasa'
end
```

- Get Current Weather
- - Get weather by city name
- - - `OpenWeather::CurrentWeather.by_city(name: "london")`

- - Get weather by zipcode and country code. more info => [openweathermap.org](https://openweathermap.org/current#zip)
- - - `OpenWeather::CurrentWeather.by_zip(zipcode: 94040, country: "us")`

- - Get Weather by geographic coordinates[lon, lat]. , refer to [openweathermap.org](https://openweathermap.org/current#geo)
- - - `OpenWeather::CurrentWeather.by_coords(coords: [-0.8393, 9.40078])`
- - Get weather by city id, refer to [openweathermap.org](https://openweathermap.org/current#cityid)
- - - ` OpenWeather::CurrentWeather.by_city_id(id: 2294877)`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/codesalley/open_weather.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
