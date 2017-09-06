# -*- encoding: utf-8 -*-
# stub: activesupport 3.0.0.beta3 ruby lib

Gem::Specification.new do |s|
  s.name = "activesupport"
  s.version = "3.0.0.beta3"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Heinemeier Hansson"]
  s.date = "2010-04-13"
  s.description = "A toolkit of support libraries and Ruby core extensions extracted from the Rails framework. Rich support for multibyte strings, internationalization, time zones, and testing."
  s.email = "david@loudthinking.com"
  s.homepage = "http://www.rubyonrails.org"
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = "activesupport"
  s.rubygems_version = "2.5.1"
  s.summary = "A toolkit of support libraries and Ruby core extensions extracted from the Rails framework."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n>, ["~> 0.3.6"])
      s.add_runtime_dependency(%q<tzinfo>, ["~> 0.3.16"])
      s.add_runtime_dependency(%q<builder>, ["~> 2.1.2"])
      s.add_runtime_dependency(%q<memcache-client>, [">= 1.7.5"])
    else
      s.add_dependency(%q<i18n>, ["~> 0.3.6"])
      s.add_dependency(%q<tzinfo>, ["~> 0.3.16"])
      s.add_dependency(%q<builder>, ["~> 2.1.2"])
      s.add_dependency(%q<memcache-client>, [">= 1.7.5"])
    end
  else
    s.add_dependency(%q<i18n>, ["~> 0.3.6"])
    s.add_dependency(%q<tzinfo>, ["~> 0.3.16"])
    s.add_dependency(%q<builder>, ["~> 2.1.2"])
    s.add_dependency(%q<memcache-client>, [">= 1.7.5"])
  end
end
