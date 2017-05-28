require 'sinatra'
require 'sinatra/activerecord'

current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }


get '/users' do
  @users = User.all
  @users.to_json
end

get '/users/:id' do
  @user = User.find_by_id(params[:id])
  @user.to_json
end

