source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Authentication devise_token_auth
gem 'devise_token_auth'

# JSON serializer
gem 'active_model_serializers'

gem 'rails', '~> 6.1.4'

gem 'mysql2', '~> 0.5'

gem 'puma', '~> 5.0'

gem 'bootsnap', '>= 1.4.4', require: false



group :development, :test do
  gem 'faker'  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
