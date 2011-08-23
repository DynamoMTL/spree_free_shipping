Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_free_shipping'
  s.version     = '0.60.1'
  s.summary     = 'Add free shipping to your Spree store'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Bryan Mahoney'
  s.email             = 'bryan@goDynamo.com'
  s.homepage          = 'http://www.goDynamo.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.50.1')
end
