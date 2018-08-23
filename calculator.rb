require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(square_1, square_2) 
    return square_1 * square_2
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  # which method you're testing
  describe '#add' do
    # actually put the code to test
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(2,3)
      expect(result).to eq(5)
    end

    it 'should return the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-5,-2)
      expect(result).to eq(-7)
    end
  end

  describe '#subtract' do
    it 'show return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(1,5)
      expect(result).to eq(-4)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(0, 10)
      expect(result).to eq(0)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(10, 5)
      expect(result).to eq(2)
    end
  end

  describe '#square' do
    it 'should return the square root of two numbers' do
      calculator = Calculator.new
      result = calculator.square(4, 4)
      expect(result).to eq(16)
    end
  end
end 


