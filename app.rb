require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/activerecord'



set :database, "sqlite3:myawesomedatabase.sqlite3"

require './models'

get '/' do
	@user = User.create(:email => "hello@gmail.com", :birthday => 1948)
	erb :user

end




# get "/sup" do 
# 	message = "THESE ARE MY PARAMS<br/>"
# 	params.each do |key, value|
# 		message << "#{key}: #{value}<br/>"
# 	end


# if params ['q'] == "fueled"
# 	message << "FUELED!!!"
# else
# 	message << "EMPTY!!"
# end

# 	message
# end

# get "/user" do
# 	email_param = params[:email]
# 	@u = User.where(:email => email_param).first

# 	if(@u != nil)
# 		erb :user
# 		# "Email: #{@u.email}, Birthday: #{@u.birthday}"
# 	else
# 		"Couldn't find user with email #{email_param}"
# 	end
# end