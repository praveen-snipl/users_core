$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "users_eone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "users_eone"
  s.version     = UsersEone::VERSION
  s.authors     = ["praveen"]
  s.email       = ["praveen.valluvan@supranimbus.co"]
  s.homepage    = ""
  s.summary     = "Summary of UsersEone."
  s.description = "Description of UsersEone."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.7"
  s.add_dependency "kaminari"
  s.add_development_dependency "mysql2"
end
