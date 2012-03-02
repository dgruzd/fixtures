# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fixtures/version"

Gem::Specification.new do |s|
  s.name        = "fixtures"
  s.version     = Fixtures::VERSION
  s.authors     = ["Dmitry Gruzd"]
  s.email       = ["donotsendhere@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{dump your model object to fixtures}
  s.description = %q{now you can do object.to_fixtures and use in tests}

  s.rubyforge_project = "fixtures"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
