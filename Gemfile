source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use mysql2 as the database for Active Record
#gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use devise for admin user authentication
gem 'devise'
# Use activeadmin for admin area
gem 'activeadmin', '~> 1.1.0' 
# Use carrierwave for file uploads
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
# Use carrierwave-base64 for base64 file uploads
gem 'carrierwave-base64'



# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
 gem 'bcrypt', '~> 3.1.7'
 gem 'jwt'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', require: 'rack/cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.7.2'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'simple_command'
#The simple command gem is an easy way of creating services. Its role is similar to the role of a helper, but instead of facilitating the connection between the controller and the view, it does the same for the controller and the model. In this way, we can shorten the code in the models and controllers.
gem 'active_model_serializers', '0.9.3'

gem 'kaminari'
gem 'pager_api'
gem 'whenever', require: false
group :development do
  gem 'mysql2'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end