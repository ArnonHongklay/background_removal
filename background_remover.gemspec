# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "background_remover/version"

Gem::Specification.new do |s|
  s.name        = "background_remover"
  s.version     = BackgroundRemover::VERSION
  s.authors     = ["Non Madden"]
  s.email       = ["nonmadden@gmail.com"]
  s.homepage    = "https://nonmadden.com"
  s.summary     = "Summary of BackgroundRemover."
  s.description = "<<-DESC
                    This gem is a wrapper to remove image background
                  DESC"
  # s.license     = "MIT"

  s.rubyforge_project = "BackgroundRemover"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  # s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_paths     = ["lib"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "mechanize"
  s.add_development_dependency "rmagick"
end
