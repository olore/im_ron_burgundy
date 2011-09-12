# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "im_ron_burgundy/version"

Gem::Specification.new do |s|
  s.name        = "im_ron_burgundy"
  s.version     = ImRonBurgundy::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Olore"]
  s.email       = ["brian@olore.net"]
  s.homepage    = "http://rubygems.org/gems/im_ron_burgundy"
  s.summary     = 'Determine if an object is Ron Burgundy or not.'
  s.description = %q{Is the object you're working on Ron Burgundy?}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
