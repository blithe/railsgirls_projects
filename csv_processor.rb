require 'csv'

class CSVProcessor
    def initialize(filename)
        @file = CSV.open(filename, {:headers => true, :header_converters => :symbol})
    end

    def spread(max, min)
        (max.to_i - min.to_i).abs
    end

    def minimum_spread(first_value, second_value, column_to_output)
        minimum = 100
        @file.each do |line|
            range = spread(line[:"#{first_value}"], line[:"#{second_value}"])
            if range <= minimum
                minimum = range
            @min_value = line[:"#{column_to_output}"]
            end
        end
        @min_value
    end

    def points
        puts "Team: " + minimum_spread("f", "a", "team")
    end

    def temperature
        puts "Day: " + minimum_spread("mxt", "mnt", "dy")
    end
end

weather = CSVProcessor.new("weather.csv")
weather.temperature

football = CSVProcessor.new("football.csv")
football.points