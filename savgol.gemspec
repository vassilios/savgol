# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'savgol/version'

Gem::Specification.new do |spec|
  spec.name          = "savgol"
  spec.version       = Savgol::VERSION
  spec.authors       = ["John T. Prince", "Ondra Beneš"]
  spec.email         = ["jtprince@gmail.com"]
  spec.summary       = %q{performs Savitzky-Golay smoothing}
  spec.description   = %q{Extends Array class with method which calculates applies Savitzky-Golay filter used for smoothing the data}
  spec.homepage      = "http://github.com/princelab/savgol"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  [
    #["trollop", "~> 2.0.0"],
  ].each do |args|
    spec.add_dependency(*args)
  end

  [
    ["bundler", "~> 1.8.3"],
    ["rake"],
    ["rspec", "~> 3.2.0"], 
    ["rdoc", "~> 4.2.0"], 
    ["simplecov", "~> 0.9.2"],
    ["gnuplot", "~> 2.6.2"],
  ].each do |args|
    spec.add_development_dependency(*args)
  end

end
