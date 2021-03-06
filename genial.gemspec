# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'genial/version'

Gem::Specification.new do |spec|
  spec.name          = "genial"
  spec.version       = Genial::VERSION
  spec.authors       = ["Renan Gurgel"]
  spec.email         = ["gurgel.renan@gmail.com"]

  spec.summary       = %q{Genial, is a simple gem that allows you to check the current value of a currency in Brazilian Real.}
  spec.description   = %q{Genial, is a simple gem that allows you to check the current value of a currency in Brazilian Real.}
  spec.homepage      = "https://github.com/gurgelrenan/genial"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rspec"

  spec.add_dependency "httparty", "~> 0.13.7"
end
