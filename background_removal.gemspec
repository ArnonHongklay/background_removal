$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "background_removal/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "background_removal"
  s.version     = Imgdrill::VERSION
  s.authors     = ["Arnon Hongklay"]
  s.email       = ["arnon@hongklay.com"]
  s.homepage    = "https://arnon.hongklay.com"
  s.summary     = "This gem is a wrapper to remove image background"
  s.description = "<<-DESC
    This gem is a wrapper to drill image  background is libary for remove background image from all file type to png file
  DESC"
  s.license     = "MIT"

  s.rubyforge_project = "ImgDrill"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  # s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_paths     = ["lib"]

  s.add_dependency "rails", "~> 5.1.1"
  s.add_dependency "sqlite3"
  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "mechanize"
  s.add_development_dependency "rmagick"
end
