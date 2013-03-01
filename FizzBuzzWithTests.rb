require 'rspec'

class FizzBuzzGenerator
    def output(number)
        if number % 3 == 0 && number % 5 == 0
            return "FizzBuzz"
        elsif number % 3 == 0
            return "Fizz"
        elsif number % 5 == 0
            return "Buzz"
        else
            return ""
        end
    end

    def range(max)
        (1..max).each do |n|
            puts output(n)
        end
    end
end


describe FizzBuzzGenerator do
    before(:each) { @fizzbuzz = FizzBuzzGenerator.new }

    context "when a number is a multiple of 3 and 5" do
        it "prints FizzBuzz" do
            expect(@fizzbuzz.output(15)).to eq("FizzBuzz")
        end
    end

    context "when a number is a multiple of 3" do
        it "prints Fizz" do
            expect(@fizzbuzz.output(3)).to eq("Fizz")
        end
    end

    context "when a number is a multiple of 5" do
        it "prints Buzz" do
            expect(@fizzbuzz.output(5)).to eq("Buzz")
        end
    end

    context "when a number is not a multiple of 3, or 5, or both" do
        it "prints nothing" do
            expect(@fizzbuzz.output(2)).to eq("")
        end
    end
end

FizzBuzzGenerator.new.range(100)