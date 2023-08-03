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


get("/payment/new") do
  erb(:payment_new)
end

get("/random/new") do
  erb(:random_new)
end
