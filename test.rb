require 'open-uri'
require 'nokogiri'
require 'roo'

html = URI.open("https://www.bloomberg.co.jp/quote/4689:JP")
p Nokogiri::HTML(html).css(".data-table_detailed>div:nth-child(4)>div:nth-child(2)").to_s.match(/>\s(.*)\s</)[1].delete(",").to_f