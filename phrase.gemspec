# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "phrase/version"

Gem::Specification.new do |s|
  s.name        = "phrase"
  s.version     = Phrase::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Phrase"]
  s.email       = ["support@phrase.com"]
  s.homepage    = "https://phrase.com"
  s.summary     = "You can collaborate on language file translation with your team or order translations through our platform. The API allows you to import locale files, download locale files, tag keys or interact in other ways with the localization data stored in Phrase Strings for your account."
  s.description = "Phrase Strings is a translation management platform for software projects."
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.6.0"

  s.metadata = {
    "bug_tracker_uri"   => "https://github.com/phrase/phrase-ruby/issues",
    "source_code_uri"   => "https://github.com/phrase/phrase-ruby"
  }

  s.add_runtime_dependency 'typhoeus', '>= 1.0.1'
  s.add_runtime_dependency 'json', '>= 2.1.0'
  s.add_runtime_dependency 'link-header-parser'

  s.add_development_dependency 'rspec', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
