class Solver
    def factorial(number)
        raise ArgumentError, 'Factorial is not defined for negative integers.' if number.negative?
    
        result = (1..number).sum
        result
    end
  
    def reverse(word)
        result = word.reverse
        result
    end
  
    def fizzbuzz(number)
        result = if (number % 3).zero? && (number % 5).zero?
                   'fizzbuzz'
                 elsif (number % 3).zero?
                   'fizz'
                 elsif (number % 5).zero?
                   'buzz'
                 else
                   number.to_s
                 end
        result
      end
  end
  