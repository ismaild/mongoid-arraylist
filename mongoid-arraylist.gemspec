# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arraylist/version'

Gem::Specification.new do |gem|
  gem.name          = "mongoid-arraylist"
  gem.version       = Mongoid::Arraylist::VERSION
  gem.authors       = ["Ismail Dhorat"]
  gem.email         = ["ismail@zyelabs.net"]
  gem.description   = %q{Define methods for working with mongodb arrays in views}
  gem.summary       = %q{Lets you pass a string of items to your model, will split by ',' and save to mongodb as an array}
  gem.homepage      = "https://github.com/ismaild/mongoid-arraylist"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "mongoid", "> 2.0"
  gem.add_development_dependency "rspec", "~> 2.12.0"
end
