# frozen_string_literal: true

require_relative "lib/okcomputer_html_view/version"

Gem::Specification.new do |spec|
  spec.name = "okcomputer_html_view"
  spec.version = OkcomputerHtmlView::VERSION
  spec.authors = ["Madogiwa"]
  spec.email = ["madogiwa0124@gmail.com"]
  spec.summary = "html view for OK Computer."
  spec.description = "html view for OK Computer."
  spec.homepage = "https://github.com/Madogiwa0124/okcomputer_html_view"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6")
  spec.metadata["homepage_uri"] = spec.homepage
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "okcomputer", "~> 1.18.4"
end
