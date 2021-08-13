# frozen_string_literal: true

require "open_weather"

RSpec.describe OpenWeather::CurrentWeather do
  it "has a version number" do
    expect(OpenWeather::VERSION).not_to be nil
  end

  it " Get currnt weather by city name " do
    expect(OpenWeather::CurrentWeather.by_city("codesalley")).to include("codesalley")
  end

  p OpenWeather.configuration
end
