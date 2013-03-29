# Find the largest palindrome made from the product of two 3-digit numbers.

def multiply_numbers
    min_number = 100
    max_number = 999
    largest_palindrome = 0

    max_number.downto(min_number).each do |i|
        max_number.downto(min_number).each do |j|
            if palindrome?(i * j) && (i * j) > largest_palindrome
                largest_palindrome = i * j
            end
        end
    end
    largest_palindrome
end

def palindrome?(number)
    string = number.to_s
    string == string.reverse
end

puts multiply_numbers
# Answer: 906609