# -*- encoding: utf-8 -*-
# stub: dockerfile-rails 1.6.22 ruby lib

Gem::Specification.new do |s|
  s.name = "dockerfile-rails".freeze
  s.version = "1.6.22"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/fly-apps/dockerfile-rails" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sam Ruby".freeze]
  s.date = "2024-09-30"
  s.email = "rubys@intertwingly.net".freeze
  s.homepage = "https://github.com/fly-apps/dockerfile-rails".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Dockerfile generator for Rails".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.0.0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
  end
end
