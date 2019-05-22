source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'bootstrap', '~> 4.3.1'
# gem 'lightbox-bootstrap-rails', '5.1.0.1'
gem 'lightbox2-rails'

gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'mini_racer', '~> 0.2.4'
gem 'dotenv-rails', '~> 2.7', '>= 2.7.2'

gem 'twitter-bootstrap-rails'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.3.0'
gem 'sass-rails'
gem 'coffee-rails'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'listen', '>= 3.0.5', '< 3.2'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.3.6'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'letter_opener_web', '~> 1.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end
