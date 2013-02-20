def FizzBuzz 
  # for numbers 1 to 100, print Fizz for multiples of 3, Buzz for multiples of 5, FizzBuzz for both 
	(1..100).each do |n|
		print "#{n} = " 
		if n % 3 == 0 && n % 15 == 0
			puts "FizzBuzz"
		elsif n % 5 == 0
			puts "Buzz"
		elsif n % 3 == 0
			puts "Fizz"
		else
			# nothing
			puts "\n"
		end
	end
	puts "\n"
end
 
 
print fizzbuzz