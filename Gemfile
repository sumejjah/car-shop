source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/eomanovic3/Pet-World.git"
end


gem 'rails', '~> 5.1.6'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'popper_js', '~> 1.12.9'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'bootstrap', '~> 4.0.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'coffee-script-source', '~> 1.11', '>= 1.11.1'
gem 'mysql2'
gem 'carrierwave', '~> 0.10.0'
gem 'mini_magick', '~> 4.3'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
