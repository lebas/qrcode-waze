# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qrcode/waze/version'

Gem::Specification.new do |spec|
  spec.name          = "qrcode-waze"
  spec.version       = Qrcode::Waze::VERSION
  spec.authors       = ["Eduardo Alencar"]
  spec.email         = ["lebas66@gmail.com"]

  spec.summary       = %q{QRCode to Waze or GoogleMaps}
  spec.description   = %q{QRCode to Waze or GoogleMaps}
  spec.homepage      = "https://facebook.com/Solution4Mac"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.6"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "3.8.0"
  spec.add_development_dependency "rubocop", "0.65.0"
  spec.add_dependency "rqrcode", "0.10.1"
end
