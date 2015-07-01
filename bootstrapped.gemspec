$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrapped/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrapped"
  s.version     = Bootstrapped::VERSION
  s.authors     = ["Rien Croonenborghs"]
  s.email       = ["rien@croonenborghs.net"]
  s.homepage    = "http://github.com/riencroonenborgs/bootstrapped"
  s.summary     = "Bootstrap your Rails app; easy helpers to alleviate the tedious HTML."
  s.description = "Bootstrap your Rails app; easy helpers to alleviate the tedious HTML."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]  
end
