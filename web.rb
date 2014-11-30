require 'sinatra'
require 'sass'
require 'kramdown'
require 'httparty'

get '/' do
  @title = "Wish List #{Time.now.year}"
  @list = HTTParty.get(ENV['WISHLIST_URL']).to_s
  unless ENV['WISHLIST_URL']
    raise Exception, "Must set ENV['WISHLIST_URL']"
  end
  erb :wishlist
end

get '/style.css' do
  scss :style
end

