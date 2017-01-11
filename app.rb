require "sinatra"

get "/" do
  "<h1>Welcome to the home page!</h1>"
end

get "/roll" do
  "Your die roll is #{rand(1...7)}"
end


# DEFINING ROUTES WITH VARIABLES
# path variable with a colon
# Sinatra takes route variables and stores them in a hash, a PARAMS HASH
# it constructs this Hash every time it receives a request, filling it with the incoming request
# params[:variable_name]
get "/greet/:name" do
  name = params[:name].capitalize
  "Hello there #{name}!"
end

get "/square/:number" do
  number = params[:number].to_i
  squared = number * number
  "#{number} squared is #{squared}!"
end

# multiple path variables
get "/greet/:first/:last" do
    "Hello there #{params[:first]} #{params[:last]}!"
end

# route definition

get "/cat" do
  send_file "cat.html"
end