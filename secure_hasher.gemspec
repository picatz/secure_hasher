# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secure_hasher/version'

Gem::Specification.new do |spec|
  spec.name          = "secure_hasher"
  spec.version       = SecureHasher::VERSION
  spec.authors       = ["Kent Gruber"]
  spec.email         = ["kgruber1@emich.edu"]

  spec.summary       = %q{Secure Hasher provides a simple Ruby API to to securely encrypt passwords.}
  spec.description   = %q{Under the hood, Secure Hasher is quite obviously flawed relying on an old school unix-style crypt method. This gem provides a perfect example of how not to manage passwords.}
  spec.homepage      = "https://github.com/picatz/secure_hasher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executable    = "whereisthis"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
