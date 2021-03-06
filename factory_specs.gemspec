$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "factory_specs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "factory_specs"
  s.version     = FactorySpecs::VERSION
  s.authors     = ["Jacob Duffy"]
  s.email       = ["duffy.jp@gmail.com"]
  s.homepage    = "https://github.com/duffyjp/factory_specs"
  s.summary     = "Rails Engine to add FactoryGirl specs"
  s.description = "Rails Engine to add FactoryGirl specs"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.2"
  s.add_dependency "rspec-rails"

  s.add_development_dependency "sqlite3"

end
