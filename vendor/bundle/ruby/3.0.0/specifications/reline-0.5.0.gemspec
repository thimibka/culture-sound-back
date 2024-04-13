# -*- encoding: utf-8 -*-
# stub: reline 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "reline".freeze
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby/reline/issues", "changelog_uri" => "https://github.com/ruby/reline/releases", "source_code_uri" => "https://github.com/ruby/reline" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["aycabta".freeze]
  s.date = "2024-03-25"
  s.description = "Alternative GNU Readline or Editline implementation by pure Ruby.".freeze
  s.email = ["aycabta@gmail.com".freeze]
  s.homepage = "https://github.com/ruby/reline".freeze
  s.licenses = ["Ruby".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Alternative GNU Readline or Editline implementation by pure Ruby.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<io-console>.freeze, ["~> 0.5"])
  else
    s.add_dependency(%q<io-console>.freeze, ["~> 0.5"])
  end
end
