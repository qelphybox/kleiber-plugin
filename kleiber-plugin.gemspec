# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kleiber/plugin/version'

Gem::Specification.new do |spec|
  spec.name          = 'kleiber-plugin'
  spec.version       = Kleiber::Plugin::VERSION
  spec.authors       = ['Bobykin Kirill']
  spec.email         = ['qelphybox@gmail.com']

  spec.summary       = %(Plugin provides super simple way to vagrant orchestration.)
  spec.description   = %(If you need to develop more than one application and they actively communicate each other.)
  spec.homepage      = 'https://github.com/qelphybox/kleiber-plugin'

  spec.files         = `git ls-files -z`.split('\x0').reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
