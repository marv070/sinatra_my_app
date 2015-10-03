require 'sinatra'

get "/"  do
	"My first web app"
end

get '/Nemacolin' do
	'Mined Minds'
end

get '/hello/:name' do
	"Hello #{params['name']}"
end