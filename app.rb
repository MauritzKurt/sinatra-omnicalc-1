require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @square_num = params.fetch("users_number").to_f
  @square_result = @square_num ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @square_root_num = params.fetch("users_number").to_f
  @square_root_result = @square_root_num ** 0.5
  erb(:square_root_results)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
