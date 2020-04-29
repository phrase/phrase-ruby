# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "phrase/version"

Gem::Specification.new do |s|
  s.name        = "phrase"
  s.version     = Phrase::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Phrase"]
  s.email       = ["support@phrase.com"]
  s.homepage    = "https://developers.phrase.com/api/"
  s.summary     = "You can collaborate on language file translation with your team or order translations through our platform. The API allows you to import locale files, download locale files, tag keys or interact in other ways with the localization data stored in Phrase for your account."
  s.description = "Phrase is a translation management platform for software projects."
  s.license     = 'MIT'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'
  s.add_runtime_dependency 'link-header-parser'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
