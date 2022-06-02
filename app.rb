require 'sinatra'
require 'sinatra/reloader' if development?

get '/cat' do
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
