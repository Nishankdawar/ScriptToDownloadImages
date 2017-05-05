require 'watir-webdriver'
require 'nokogiri'
require 'open-uri'
require 'sanitize'
require 'regex'
require 'rubygems'
require 'sanitize'
require 'httparty'

 b = Watir::Browser.new :chrome
 b.goto("http://web.iitd.ac.in/~suhail/")
 page = HTTParty.get('http://web.iitd.ac.in/~suhail/biosketch.html')
 parse_page = Nokogiri::HTML(page)
 array = []
 parse_page.css('.Section1').css('.MsoNormalTable').each do |a|
 	post_name = Sanitize.clean(a.text)
 	array << post_name
 end
i = 1
array.each do|context|
	puts "#{i}. #{context}"
	i += 1
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

 page = HTTParty.get('http://web.iitd.ac.in/~suhail/publications.html')
 parse_page = Nokogiri::HTML(page)
 array = []
 parse_page.css('.Section1').css('.MsoNormalTable').each do |a|
 	post_name = Sanitize.clean(a.text)
 	array << post_name
 end
i = 1
array.each do|context|
	puts "#{i}. #{context}"
	i += 1
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

 page = HTTParty.get('http://web.iitd.ac.in/~suhail/projects.html')
 parse_page = Nokogiri::HTML(page)
 array = []
 parse_page.css('.Section1').css('.MsoNormalTable').each do |a|
 	post_name = Sanitize.clean(a.text)
 	array << post_name
 end
i = 1
array.each do|context|
	puts "#{i}. #{context}"
	i += 1
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

 page = HTTParty.get('http://web.iitd.ac.in/~suhail/students.html')
 parse_page = Nokogiri::HTML(page)
 array = []
 parse_page.css('.Section1').css('.MsoNormalTable').each do |a|
 	post_name = Sanitize.clean(a.text)
 	array << post_name
 end
i = 1
array.each do|context|
	puts "#{i}. #{context}"
	i += 1
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

 page = HTTParty.get('http://web.iitd.ac.in/~suhail/contact.html')
 parse_page = Nokogiri::HTML(page)
 array = []
 parse_page.css('.Section1').css('.MsoNormalTable').each do |a|
 	post_name = Sanitize.clean(a.text)
 	array << post_name
 end
i = 1
array.each do|context|
	puts "#{i}. #{context}"
	i += 1
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

 page = HTTParty.get('http://web.iitd.ac.in/~suhail/courses.html')
 parse_page = Nokogiri::HTML(page)
 array = []
 parse_page.css('.Section1').css('.MsoNormalTable').each do |a|
 	post_name = Sanitize.clean(a.text)
 	array << post_name
 end
i = 1
array.each do|context|
	puts "#{i}. #{context}"
	i += 1
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

 page = HTTParty.get('http://web.iitd.ac.in/~suhail/publications.html')
 parse_page = Nokogiri::HTML(page)
 array = []
 parse_page.css('.Section1').css('.MsoNormalTable').each do |a|
 	post_name = Sanitize.clean(a.text)
 	array << post_name
 end
i = 1
array.each do|context|
	puts "#{i}. #{context}"
	i += 1
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

 page = HTTParty.get('http://web.iitd.ac.in/~suhail/home.html')
 parse_page = Nokogiri::HTML(page)
 array = []
 parse_page.css('.Section1').css('.MsoNormalTable').each do |a|
 	post_name = Sanitize.clean(a.text)
 	array << post_name
 end
i = 1
array.each do|context|
	puts "#{i}. #{context}"
	i += 1
end
search = gets.chomp























