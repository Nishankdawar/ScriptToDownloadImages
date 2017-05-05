require 'watir-webdriver'
require 'nokogiri'
require 'open-uri'
require 'sanitize'
require 'regex'
require 'rubygems'
require 'sanitize'
require 'httparty'
 b = Watir::Browser.new :chrome
 b.goto("https://en.wikipedia.org")
 b.links.each do|link|
 	break
 end
 b.text_field(:title => "Search Wikipedia [ctrl-option-f]").set "bill gates"
 b.button(id: 'searchButton').click
# file = open('https://en.wikipedia.org/wiki/Bill_Gates')
# contents = file.read
#puts contents
page = HTTParty.get('https://en.wikipedia.org/wiki/Bill_Gates')

parse_page = Nokogiri::HTML(page)

array = []
#html = %{<strong><a href="http://foo.com/">nishankGates is currently the richest person in the world, with an estimated net worth of US$84.2 billion as of January 2017.</a>dawar</strong><img src="http://foo.com/bar.jpg" alt="" />}

parse_page.css('.mw-content-ltr').each do |a|
 	post_name = Sanitize.clean(a.text)
	array << post_name
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
 i=1
 array.each do |context|
 	puts "#{i}. #{context}"
 	 	i += 1
 end
#puts Sanitize.clean(contents)
#array << Sanitize.clean(html)

search = gets.chomp

# #require 'httparty'
# require 'nokogiri'
# require 'json'
# require 'pry'
# # require 'csv'

# puts "here"

# page = HTTParty.get('http://newyork.craigslist.org/search/pet?s=0')

# parse_page = Nokogiri::HTML(page)

# #this is an empty array where we will store all our data

# pets_array = []

# #this is where we will pase the data
# parse_page.css('.content').css('.rows').css('.hdrlnk').each do |a|
# 	post_name = a.text
# 	pets_array << post_name

# end 

# i=1
# pets_array.each do |pet|
# 	puts "#{i}. #{pet}"
# 	i += 1
# end


