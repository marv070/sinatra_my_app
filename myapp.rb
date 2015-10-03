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

get '/addition/:var1/:var2' do |input1, input2|
     sum = input1.to_i + input2.to_i 
	"addition of var1 + var2 = " + sum.to_s
end