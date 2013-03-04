require 'sinatra'
require 'sass'
require 'kramdown'

get '/' do
  @title = 'Wish List 2013'
  @list = `curl https://dl.dropbox.com/u/41496/wishlist/list.md`
  erb :wishlist
end

get '/style.css' do
  scss :style
end
