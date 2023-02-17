require_relative 'lib/open_weather/version'

Gem::Specification.new do |spec|
  spec.name = 'open_weather_sdk'
  spec.version = OpenWeather::VERSION
  spec.authors = ['code salley']
  spec.email = ['codesalley@gmail.com']

  spec.summary = 'Openweather gem, getting weather made simple'
  spec.description = 'A wrapper around openwather api'
  spec.homepage = 'https://github.com/codesalley/openweather/'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata = {
    'github_repo' => 'git@github.com:codesalley/openweather.git',
    'rubygems_mfa_required' => 'true'
  }
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/codesalley/openweather/blob/master/README.md'
  spec.metadata['changelog_uri'] = 'https://github.com/codesalley/openweather/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'httparty'
  spec.add_dependency 'json'
  spec.add_development_dependency 'rspec'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
