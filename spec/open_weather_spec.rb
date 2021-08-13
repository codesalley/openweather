# frozen_string_literal: true

require "open_weather"

RSpec.describe OpenWeather do
  it "has a version number" do
    expect(OpenWeather::VERSION).not_to be nil
  end

  it " Get current weather by city name " do
    response = OpenWeather::CurrentWeather.by_city("london")
    expect(response["name"]&.downcase).to eq("london")
  end
  it " Get current weather by city id return 404 if city id is invalid " do
    response = OpenWeather::CurrentWeather.by_city_id(1)

    expect(response).to eq([])
  end
  it " Get current weather by city id  " do
    response = OpenWeather::CurrentWeather.by_city_id(2294877)
    expect(response["name"]).to eq("Tamale")
  end
  it "Get current weather with cords in an array, [lon, lat]" do
    response = OpenWeather::CurrentWeather.by_coords([-0.8393, 9.40078])
    expect(response["name"]).to eq("Tamale")
  end
  it "Get current weather by zipcode and country code" do
    response = OpenWeather::CurrentWeather.by_zip(zipcode: 94040, country: "us")
    expect(response["name"]).to eq("Mountain View")
  end
end
