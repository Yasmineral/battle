require 'sinatra'
require 'shotgun'
require 'capybara/dsl'
require 'selenium-webdriver'

set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'I love chocolate seeds'
end

get '/random-cat' do
  @name = ["Yas", "Yazmeister Smash", "Yazzy Yay"].sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end