# encoding: UTF-8

$:.push File.expand_path("../lib", __FILE__)

require "hellion/version"

Gem::Specification.new do |gem|
  gem.authors       = ["Christopher Meiklejohn"]
  gem.email         = ["christopher.meiklejohn@gmail.com"]
  gem.description   = %q{Amazon receipt processing.}
  gem.summary       = %q{Amazon receipt processing.}
  gem.homepage      = "http://github.com/cmeiklejohn/hellion"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.name          = "hellion"
  gem.require_paths = ["lib"]
  gem.version       = Hellion::VERSION

  gem.add_dependency('mail')
  
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('rake','~> 0.9.2')

  gem.add_development_dependency('guard')
  gem.add_development_dependency('guard-rspec')
end
