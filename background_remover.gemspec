$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "background_remover/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "background_remover"
  s.version     = BackgroundRemover::VERSION
  s.authors     = ["-_-! "]
  s.email       = ["nonmadden@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BackgroundRemover."
  s.description = "TODO: Description of BackgroundRemover."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
