require 'sinatra'
require 'sass'
require 'kramdown'
require 'httparty'

get '/' do
  @title = "Wish List #{Time.now.year}"
  @list = HTTParty.get(ENV['WISHLIST_URL']).to_s
  erb :wishlist
end

get '/style.css' do
  scss :style
end

