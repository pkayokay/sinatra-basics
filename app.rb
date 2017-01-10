require "sinatra"

get "/" do
  'You requested the root path!'  
end

get "/about" do
  'This is the about path.'  
end

get "/roll" do
  "Your die roll is #{rand(1...7)}"
end

get “/greet/:name” do
  name = params[:name].capitalize
  "Hello there #{name}!"
end

get "/square/:number" do
number = params[:number].to_i
squared = number * number

"#{squared}"
end
