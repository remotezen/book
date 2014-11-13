source 'https://rubygems.org'

# Distribute your app as a gem
# gemspec

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'erubis', '~> 2.7.0'
gem 'activerecord', '>= 3.1', :require => 'active_record'
gem 'sqlite3'

# Test requirements
gem 'rspec', :group => 'test'
gem 'rack-test', :require => 'rack/test', :group => 'test'

group :test ,:development do
  gem 'guard'
  gem 'spork'
  gem 'guard-rspec'
end
# Padrino Stable Gem
gem 'padrino', '0.12.4'
group :test do
  gem 'factory_girl'
end

# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
# %w(core support gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.12.4'
# end
gem 'padrino-sprockets', :require => ['padrino/sprockets'],
  :git => 'git://github.com/nightsailer/padrino-sprockets.git'
gem 'uglifier', '2.1.1'
gem 'yui-compressor', '0.9.6'
gem 'execjs'
gem 'therubyracer'
gem 'puma'
gem 'pry'
gem 'pry-padrino'
