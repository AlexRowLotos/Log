# -*- encoding: utf-8 -*-
# stub: page-object 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "page-object"
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeff Morgan", "Dane Andersen"]
  s.date = "2016-11-18"
  s.description = "Page Object DSL that works with both Watir and Selenium"
  s.email = ["jeff.morgan@leandog.com", "dane.andersen@gmail.com"]
  s.homepage = "http://github.com/cheezy/page-object"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Page Object DSL for browser testing"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<watir-webdriver>, ["< 0.9.9", ">= 0.6.11"])
      s.add_runtime_dependency(%q<selenium-webdriver>, [">= 2.53.0"])
      s.add_runtime_dependency(%q<page_navigation>, [">= 0.9"])
      s.add_runtime_dependency(%q<net-http-persistent>, ["~> 2.9.4"])
      s.add_development_dependency(%q<rspec>, [">= 3.0.0"])
      s.add_development_dependency(%q<cucumber>, [">= 2.0.0"])
      s.add_development_dependency(%q<yard>, [">= 0.7.2"])
      s.add_development_dependency(%q<rack>, ["~> 1.0"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.8.1"])
    else
      s.add_dependency(%q<watir-webdriver>, ["< 0.9.9", ">= 0.6.11"])
      s.add_dependency(%q<selenium-webdriver>, [">= 2.53.0"])
      s.add_dependency(%q<page_navigation>, [">= 0.9"])
      s.add_dependency(%q<net-http-persistent>, ["~> 2.9.4"])
      s.add_dependency(%q<rspec>, [">= 3.0.0"])
      s.add_dependency(%q<cucumber>, [">= 2.0.0"])
      s.add_dependency(%q<yard>, [">= 0.7.2"])
      s.add_dependency(%q<rack>, ["~> 1.0"])
      s.add_dependency(%q<coveralls>, ["~> 0.8.1"])
    end
  else
    s.add_dependency(%q<watir-webdriver>, ["< 0.9.9", ">= 0.6.11"])
    s.add_dependency(%q<selenium-webdriver>, [">= 2.53.0"])
    s.add_dependency(%q<page_navigation>, [">= 0.9"])
    s.add_dependency(%q<net-http-persistent>, ["~> 2.9.4"])
    s.add_dependency(%q<rspec>, [">= 3.0.0"])
    s.add_dependency(%q<cucumber>, [">= 2.0.0"])
    s.add_dependency(%q<yard>, [">= 0.7.2"])
    s.add_dependency(%q<rack>, ["~> 1.0"])
    s.add_dependency(%q<coveralls>, ["~> 0.8.1"])
  end
end
