require 'sinatra'

get '/' do
  "Hello world!"
end

get '/hello/:name' do
  "Hello there, #{params[:name]}!"
end

get '/more/*' do
  "Bring me more #{params[:splat]}!"
end

get '/about' do
  "This is an about page, about pages"
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  status 404
  'not found'
end

