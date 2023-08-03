require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:home)
end

get("/square/new") do
erb(:square_new)

end

get("/square/results") do
  @the_digits = params.fetch("digits").to_f
  @the_result = params.fetch("digits").to_f ** 2
  erb(:square_result)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @the_digits = params.fetch("digits")
  @the_result = Math.sqrt(params.fetch("digits").to_f)
  erb(:square_root_results)
end


get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do

  @rate = (params.fetch("user_apr")).to_f 
  @time = (params.fetch("user_years")).to_i
  @loan = (params.fetch("user_pv")).to_f

  @rate_i = @rate/100
  @month = 12
  @p = (1-(1+@rate_i/@month)**(-@month*@time))/(@rate_i/@month)
  @payment = (@loan/@p).round(2)

  erb(:payment_result)
end




get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @first_one = (params.fetch("user_min")).to_f
  @second_one = (params.fetch("user_max")).to_f
  @result = rand(@first_one..@second_one)

erb(:random_result)
end
