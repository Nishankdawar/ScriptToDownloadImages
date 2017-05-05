require 'watir-webdriver'
require 'nokogiri'
b = Watir::Browser.new :chrome
billionaires = ["bill gates","warren buffet","larry ellison", "richard branson"] 

billionaires_images = billionaires.each do|images|
	b.goto("images.google.com")
	b.text_field(:title => "Search").set images
	b.button(type: 'submit').click
	sleep 1
	puts "hiii"
	doc = Nokogiri::HTML.parse(b.html)
	puts "hello"
	doc.at_css("div#search img")["src"]
end


search = gets.chomp