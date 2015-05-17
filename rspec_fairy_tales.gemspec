# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "rspec_fairy_tales"
  spec.version       = "0.1.0"
  spec.authors       = ["James Kiesel"]
  spec.email         = ["james.kiesel@gmail.com"]

  spec.summary       = "Open source storytelling with 100% test coverage"
  spec.homepage      = "http://www.github.com/gdpelican/rspec_fairy_tales"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"
end
