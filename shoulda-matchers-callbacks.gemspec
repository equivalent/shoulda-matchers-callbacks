# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shoulda/matchers/callbacks/version'

Gem::Specification.new do |spec|
  spec.name          = "shoulda-matchers-callbacks"
  spec.version       = Shoulda::Matchers::Callbacks::VERSION
  spec.authors       = ["Equivalent"]
  spec.email         = ["equivalent@eq8.eu"]
  spec.description   = %q{Shoulda Matchers gem extension for Active Model (Rails) callbacks
                          (after_create, before_create, after_update, before_update...) }
  spec.summary       = %q{Shoulda Matchers for Active Model (Rails) callbacks}
  spec.homepage      = "https://github.com/equivalent/shoulda-matchers-callbacks"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "shoulda-matchers", "~> 1.3"
  spec.add_development_dependency('rspec-rails', '>= 2.13.1', '< 3')
  spec.add_development_dependency('rails', '~> 3.0')
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rake"
end
