$:.push File.expand_path("../lib", __FILE__)

require "gulp-runner/version"

Gem::Specification.new do |s|
  s.name          = "gulp-runner"
  s.version       = Gulprunner::VERSION
  s.homepage      = "https://github.com/hirtie-maxim/gulp-runner"
  s.date          = "2015-01-01"
  s.summary       = "Gulp for Rails"
  s.description   = "Rails integration for gulp."
  s.authors       = ["Hirtie Maxim"]
  s.email         = "hirtie.maxim@gmail.com"
  s.files         = Dir["lib/**/*"] + ["MIT-LICENSE", "README.md"]
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  s.license    = 'MIT'

  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "coveralls"
end
