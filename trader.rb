require 'rubygems'
require 'nokogiri'
require 'open-uri'

def trader
	nom =[]
	prix =[] 
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

page.css(".currency-name-container").each { |i| nom << i.text }
page.css("a.price").each { |j| prix << j.text }

puts nomprix = Hash[nom.zip(prix)]

end

puts trader
