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

get '/multiply/:var1/:var2/:var3' do |name, input2, input3|
	product = input2.to_i * input3.to_i
	"Hello #{name} mulitplication of var2 * var3 = "  + product.to_s
end

get '/details' do
	erb :username
end
post '/details' do
	erb :age, :locals => {:name => params['user']}

end


post '/age' do
  if params[:howold].to_i < 60
   erb :numbers
  else
	" In 10 years you will be: #{params[:howold].to_i + 10}."
  end
end

post '/numbers' do
  favnum1 = params['favnum1'].to_i
  favnum2 = params['favnum2'].to_i
  favnem3 = params['favnum3'].to_i

  sum = favnum1 + favnum2 + favnem3
  "total of your 3 fav numbers is #{sum}"
end


