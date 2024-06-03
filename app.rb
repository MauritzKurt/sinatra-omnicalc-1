require "sinatra"
require "sinatra/reloader"



get("/") do
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

get("/payment/new") do
  erb(:new_payment)
end

get("/payment/results") do
  @payment_APR = params.fetch("users_numberAPR").to_f
  @payment_Noy = params.fetch("users_numberNoY").to_f
  @payment_Principal = params.fetch("users_numberPrincipal").to_f
  monthlyInterestRate = @payment_APR / 100 / 12
  totalPayments = @payment_Noy * 12
  @monthlyPayment = (@payment_Principal * monthlyInterestRate * ((1 + monthlyInterestRate) ** totalPayments)) / (((1 + monthlyInterestRate) ** totalPayments) - 1)
  erb(:payment_results)
end

get ("/random/new") do
  erb(:new_random)
end

get ("/random/results") do
  @minimum = params.fetch("users_numberMinimum").to_f
  @maximum = params.fetch("users_numberMaximum").to_f
  @randNum = rand(@minimum..@maximum)
  
  erb(:random_results)
end
