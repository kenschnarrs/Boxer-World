bundle install
rails db:environment:set RAILS_ENV=development
rails db:migrate:reset
rails db:seed
rails s