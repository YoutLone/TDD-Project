require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 6 for factorial of 3' do
      expect(subject.factorial(3)).to eq(6)
    end

    it 'returns the correct factorial for a positive number' do
      expect(subject.factorial(5)).to eq(120)
      expect(subject.factorial(6)).to eq(720)
    end

    it 'raises an exception for a negative number' do
      expect { subject.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      expect(subject.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when the number is divisible by 3' do
      expect(subject.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when the number is divisible by 5' do
      expect(subject.fizzbuzz(20)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when the number is divisible by 3 and 5' do
      expect(subject.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for any other case' do
      expect(subject.fizzbuzz(7)).to eq('7')
    end
  end
end
