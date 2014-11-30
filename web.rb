require 'sinatra'
require 'sass'
require 'kramdown'
require 'httparty'

get '/' do
  @title = "Wish List #{Time.now.year}"
  unless ENV['WISHLIST_URL']
    raise Exception, "Must set ENV['WISHLIST_URL']"
  end
  response = HTTParty.get(ENV['WISHLIST_URL'])
  @list = if response.code == 200
    response.to_s
  else
    "Sorry, the list isn't available"
  end
  erb :wishlist
end

get '/style.css' do
  scss :style
end

