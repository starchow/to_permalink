$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "to_permalink/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "to_permalink"
  s.version     = ToPermalink::VERSION
  s.authors     = ["Pham Trung Nam"]
  s.email       = ["nampt.kbs@kbsvn.vn"]
  s.homepage    = "http://kbsvn.vn"
  s.summary     = "Summary of ToPermalink."
  s.description = "This gem will add to_vnlink method for String class."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  #s.add_dependency "rails", "~> 3.1.0"

  #s.add_development_dependency "sqlite3"
end
