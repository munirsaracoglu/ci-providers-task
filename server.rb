require 'sinatra'

set :bind, '0.0.0.0'
set :port, 3333
set :server, :webrick

post '/text' do
  text = params[:text]
  puts text
end
