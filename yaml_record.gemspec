# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yaml_record/version"

Gem::Specification.new do |s|
  s.name        = "yaml_record_rails_4"
  s.version     = YamlRecord::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nico Taing", "Nathan Esquenazi", 'Ruslan Hamidullin', 'Eduard Gataullin']
  s.email       = ["edikgat@gmail.com"]
  s.homepage    = "https://github.com/edikgat/yaml_record/tree/rails4"
  s.summary     = %q{This gem is a fork to gem yaml_record with rails 4 support}
  s.description = %q{Use YAML for persisted data with ActiveModel interface}

  s.rubyforge_project = "yaml_record_rails_4"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'activesupport', '~> 4.0.0'
  s.add_development_dependency 'rake', '~> 1.5.2'
  s.add_development_dependency 'shoulda'
end
