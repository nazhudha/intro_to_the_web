require 'sinatra'
require 'sinatra/reloader' if development?

get '/named-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/random-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/ruby' do
  erb("Hi there, Visitor <%= 2 + 2 %>!")
end


get '/secret' do
  "this is the secret route now this is a reload"
end

get '/' do
  "Hello World"
end

get '/cat-form' do
  erb :cat_form
end

post '/random-cat' do
  p params
  @name = params[:name]
  erb :index
end