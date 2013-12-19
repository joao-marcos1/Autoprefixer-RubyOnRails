require './lib/autoprefixer-rails/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'autoprefixer-rails'
  s.version     = AutoprefixerRails::VERSION.dup
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = 'Parse CSS and add vendor prefixes to CSS rules using ' +
                  'values from the Can I Use website.'

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec}/*`.split("\n")
  s.extra_rdoc_files = ['README.md', 'LICENSE', 'ChangeLog']
  s.require_path     = 'lib'

  s.author   = 'Andrey "A.I." Sitnik'
  s.email    = 'andrey@sitnik.ru'
  s.homepage = 'https://github.com/ai/autoprefixer-rails'
  s.license  = 'MIT'

  s.add_dependency "execjs", [">= 0"]
end
