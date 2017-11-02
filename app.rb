require 'watir'
require 'selenium-webdriver'

a = {:url => "https://soundcloud.com/chisbeybexnneji/neon-guts-freestyle", :name => "1 neon guts freestyle"}
b = {:url => "https://soundcloud.com/chisbeybexnneji/standby", :name => "2 standby"}
c = {:url => "https://soundcloud.com/chisbeybexnneji/cheap-guy-til-i-die", :name => "3 cheap guy"}
d = {:url => "https://www.youtube.com/watch?v=wDHJSccUiu8&t=68s", :name => "4 af warrior"}
f = [a,b,c,d]
f.each{|n| puts n[:name]}

print "Enter number and press enter or press 'O' for other: "
choice = gets.chomp
if(choice == 'O' || choice == 'o' || choice == '0')
print "Enter url and press enter: "
url = gets.chomp
elsif (choice.to_i != 0 &&  choice.to_i <= f.size) 
	url = f[choice.to_i - 1].url
	puts "good choice"
else
	puts "You broke it"
	throw
end

x = 0
print "how many times: "
z = gets.chomp.to_i

print "how many seconds each: "
y = gets.chomp.to_i

puts "Number of plays"
while (x < z) 
	main_d =  Watir::Browser.new(:chrome)
	main_d.goto(url)
	# main_d.a(:class => 'play-button').wait_until_present
	# main_d.a(:class => 'play-button').click
	x = x+1
	sleep(y)
	main_d.quit

	puts "  play "+x.to_s
end
puts "you are welcome"

