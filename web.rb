require 'sinatra'
require 'sass'
require 'kramdown'
require 'httparty'

get '/' do
  @title = 'Wish List 2014'
  @list = HTTParty.get(ENV['WISHLIST_URL']).to_s
  erb :wishlist
end

get '/style.css' do
  scss :style
end

