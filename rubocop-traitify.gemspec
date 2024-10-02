$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "rubocop/traitify/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-traitify"
  spec.summary = "Default Rubocop config for Traitify Apps"
  spec.description = <<-EOF
    Traitify's Ruby configuration for Rubocop. Heavily influenced by (as well as dependent on)
    Airbnb's https://github.com/airbnb/ruby
  EOF
  spec.authors = ["Tom Prats"]
  spec.email = ["tom.prats@paradox.ai"]
  spec.homepage = "https://github.com/traitify/rubocop-traitify"
  spec.license = "MIT"
  spec.version = RuboCop::Traitify::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = ">= 2.7"
  spec.require_paths = ["lib"]
  spec.files = Dir[
    "{config,lib}/**/*",
    "*.md",
    "*.gemspec",
    ".rubocop_traitify.yml",
    "Gemfile"
  ]

  spec.add_dependency("rubocop-airbnb", "~> 7.0.0")
end
