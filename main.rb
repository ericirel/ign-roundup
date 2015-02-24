require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  url = "http://www.ign.com/games/reviews"
  data = Nokogiri::HTML(open(url))
  @games = data.css('.itemList-item')
  erb :reviews
end
