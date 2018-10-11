require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhall_from_its_webpage
	page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
	return page.css(".tr-last")[3].text.split[2]
end
