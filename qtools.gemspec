# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qtools/version'

Gem::Specification.new do |spec|
  spec.name          = "qtools"
  spec.version       = Qtools::VERSION
  spec.authors       = ["Daniel"]
  spec.email         = ["@"]

  spec.summary       = %q{ Shortcuts for the Open Grid Scheduler }
  spec.description   = %q{ Make the most common Sun Grid Engine programs more effective.  }
  spec.homepage      = "https://github.com/kerkomen/qtools"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         = %w{ .gitignore .travis.yml Gemfile LICENSE.txt README.md Rakefile bin/console bin/qclean bin/qqsub bin/qwatch bin/qcount bin/qnode bin/setup lib/qtools.rb lib/qtools/version.rb qtools.gemspec}
  spec.bindir        = "bin"
  spec.executables   = ["qwatch", "qclean", "qqsub", "qcount", "qnode"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
