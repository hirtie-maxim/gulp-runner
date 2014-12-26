$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gulp-runner/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name          = "bower-rails"
  s.version       = BowerRails::VERSION
  s.date          = "2013-12-12"
  s.summary       = "Bower for Rails"
  s.description   = "Rails integration for gulp."
  s.authors       = ["Hirtie Maxim"]
  s.email         = "hirtie.maxim@gmail.com"
  s.files         = Dir["lib/**/*"] + ["MIT-LICENSE", "README.md"]
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  s.license    = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "coveralls"
end
