# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ci_reporter"
  s.version = "1.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Sieger"]
  s.date = "2011-06-14"
  s.description = "CI::Reporter is an add-on to Test::Unit, RSpec and Cucumber that allows you to generate XML reports of your test, spec and/or feature runs. The resulting files can be read by a continuous integration system that understands Ant's JUnit report XML format, thus allowing your CI system to track test/spec successes and failures."
  s.email = "nick@nicksieger.com"
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "LICENSE.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "LICENSE.txt"]
  s.homepage = "http://caldersphere.rubyforge.org/ci_reporter"
  s.rdoc_options = ["--main", "README.txt", "-SHN", "-f", "darkfish"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "caldersphere"
  s.rubygems_version = "1.8.10"
  s.summary = "CI::Reporter allows you to generate reams of XML for use with continuous integration systems."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<hoe>, [">= 2.9.4"])
    else
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<hoe>, [">= 2.9.4"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<hoe>, [">= 2.9.4"])
  end
end