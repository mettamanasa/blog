source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.0.2'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'devise'
  gem "paperclip", "~> 5.0.0"
  gem 'will_paginate'
  gem 'will_paginate-bootstrap'
  gem 'fullcalendar-rails'
  gem 'momentjs-rails'
  gem 'tinymce-rails'
  gem "ckeditor"
  gem 'rails-calendar'
  gem 'calendar_date_select'
  gem 'carrierwave'
  gem 'mini_magick'
  gem 'dragonfly'
  gem 'bootstrap-sass', '~> 3.2.0'
  gem 'autoprefixer-rails'
 
  
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
