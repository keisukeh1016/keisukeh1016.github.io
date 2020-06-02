require 'open-uri'
require 'nokogiri'
require 'roo'

html = URI.open("https://minkabu.jp/stock/4689") 
a = Nokogiri::HTML(html).css("p").to_s.match(/>(.*)</)#[1]

p a