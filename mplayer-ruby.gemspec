# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name             = "mplayer-ruby"
  gem.version          = "0.1.0"
  gem.date             = %q{2010-02-01}
  gem.authors          = ["Arthur Chiu"]
  gem.email            = %q{mr.arthur.chiu@gmail.com}
  gem.description      = %q{A Ruby wrapper for MPlayer}
  gem.summary          = %q{Ruby wrapper for MPlayer}
  gem.homepage         = %q{http://github.com/achiu/mplayer-ruby}
  gem.rdoc_options     = ["--charset=UTF-8"]
  gem.extra_rdoc_files = Dir["*.rdoc"]

  gem.files            = `git ls-files`.split($/)
  gem.executables      = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files       = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths    = ["lib"]

  gem.add_dependency "open4", "~> 1.3.0"

  gem.add_development_dependency "rake", "~> 10.1.0"
  gem.add_development_dependency "riot", "~> 0.12.6"
  gem.add_development_dependency "rr", "~> 1.1.2"

end
