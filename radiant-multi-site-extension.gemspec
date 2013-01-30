# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-multi_site-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-multi_site-extension"
  s.version     = RadiantMultiSiteExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantMultiSiteExtension::AUTHORS
  s.email       = RadiantMultiSiteExtension::EMAIL
  s.homepage    = RadiantMultiSiteExtension::URL
  s.summary     = RadiantMultiSiteExtension::SUMMARY
  s.description = RadiantMultiSiteExtension::DESCRIPTION
  
  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]
  
  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem 'radiant-translate-extension', :version => '~>#{RadiantMultiSiteExtension::VERSION}'
  }
end