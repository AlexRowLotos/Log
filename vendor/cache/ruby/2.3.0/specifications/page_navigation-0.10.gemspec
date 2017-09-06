# -*- encoding: utf-8 -*-
# stub: page_navigation 0.10 ruby lib

Gem::Specification.new do |s|
  s.name = "page_navigation"
  s.version = "0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeffrey S. Morgan", "Dmitry Sharkov"]
  s.date = "2016-10-18"
  s.description = "Provides basic navigation through a collection of items that use the PageObject pattern."
  s.email = ["jeff.morgan@leandog.com"]
  s.homepage = "http://github.com/cheezy/page_navigation"
  s.rubyforge_project = "page_navigation"
  s.rubygems_version = "2.5.1"
  s.summary = "Provides basic navigation through a collection of items that use the PageObject pattern."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<data_magic>, [">= 0.22"])
      s.add_development_dependency(%q<rspec>, [">= 3.4.0"])
    else
      s.add_dependency(%q<data_magic>, [">= 0.22"])
      s.add_dependency(%q<rspec>, [">= 3.4.0"])
    end
  else
    s.add_dependency(%q<data_magic>, [">= 0.22"])
    s.add_dependency(%q<rspec>, [">= 3.4.0"])
  end
end
