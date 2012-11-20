require 'sinatra'
require 'sass'
require 'kramdown'

get '/' do
  @title = 'Wish List'
  @subtitle = '2012'
  erb :wishlist
end

get '/style.css' do
  scss :style
end
