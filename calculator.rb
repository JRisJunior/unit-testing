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

  def square(square)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(4,2)
      expect(result).to eq(2)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.subtract(10,-3)
      expect(result).to eq(13)
    end
    it 'should allow the difference to be zero' do
      calculator = Calculator.new
      result = calculator.subtract(5,5)
      expect(result).to eq(0)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(3,6)
      expect(result).to eq(18)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.multiply(-7,8)
      expect(result).to eq(-56)
    end
    it 'should return zero if multiplied by zero' do
      calculator = Calculator.new
      result = calculator.multiply(0,9)
      expect(result).to eq(0)
    end
  end
  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(10,2)
      expect(result).to eq(5)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.divide(20,-5)
      expect(result).to eq(-4)
    end
    it 'should allow the dividend to be zero' do
      calculator = Calculator.new
      result = calculator.divide(0,100)
      expect(result).to eq(0)
    end
  end
  describe '#square' do
    it 'should return the square product of itself' do
      calculator = Calculator.new
      result = calculator.square(5)
      expect(result).to eq(25)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.square(-9)
      expect(result).to eq(81)
    end
  end
  describe '#power' do
    it 'should return the product of the number raised to the exponential power' do
      calculator = Calculator.new
      result = calculator.power(3,3)
      expect(result).to eq(27)
    end
    it 'should return a negative product when provided an odd exponent' do
      calculator = Calculator.new
      result = calculator.power(-4,5)
      expect(result).to eq(-1024)
    end
    it 'should return a positive product when provided an even exponent' do
      calculator = Calculator.new
      result = calculator.power(-6,4)
      expect(result).to eq(1296)
    end
  end
  
end