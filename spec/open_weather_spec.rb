# frozen_string_literal: true

require "open_weather"

RSpec.describe OpenWeather do
  it "has a version number" do
    expect(OpenWeather::VERSION).not_to be nil
  end

  it " Get currnt weather by city name " do
    response = OpenWeather::CurrentWeather.by_city("london")
    expect(response["name"]&.downcase).to eq("london")
  end
  it " Get currnt weather by city name " do
    expect(OpenWeather::CurrentWeather.by_city_id("london")).to include("london")
  end
end
