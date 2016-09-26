$ mkdir projects
$ cd projects
$ mkdir skeleton
$ cd skeleton
$ mkdir bin data doc ext lib tests lib/NAME

$ new-item -type file bin/app.rb
$ new-item -type file lib/firstweb.rb

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem:Specification.new do |spec|
     spec.name          = "NAME"
  spec.version       = '1.0'
  spec.authors       = ["Your Name Here"]
  spec.email         = ["youremail@yourdomain.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/NAME.rb']
  spec.executables   = ['bin/NAME']
  spec.test_files    = ['tests/test_NAME.rb']
  spec.require_paths = ["lib"]
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "tests"
  t.test_files = FileList['tests/test*.rb']
  t.verbose = true
end

require "./lib/firstweb.rb"
require "test/unit"

class TestNAME < Test::Unit::TestCAse
    def test_sample
        assert_equal(4, 2+2)
    end
end


