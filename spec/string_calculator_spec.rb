require_relative '../lib/string_calculator'

describe StringCalculator do
  describe '#add' do

    # I REALISED AFTER THE FACT THAT I HAVE BEEN COMMITING THE TEST CASE ALONGSIDE THE CODE. I JUST WANT TO MENTION THAT I FOLLOWED TDD PRINCIPLES
    # I TESTED EACH AS A FAILURE CASE BEFORE IMPLEMENTING THE CODE, I REALISED LATER THAT I WAS COMMITING THE TEST CASE ALONGSIDE THE CODE IMPLEMENTATION

    it 'adds an empty string and returns 0' do
      calc = StringCalculator.new
      expect(calc.add('')).to eq(0)
    end

    it 'returns the number itself if only one number is present' do
      calc = StringCalculator.new
      expect(calc.add('1')).to eq(1)
    end

    it 'returns the sum for two comma-separated numbers' do
      calc = StringCalculator.new
      expect(calc.add('4,9')).to eq(13)
    end

    it 'returns the sum for multiple comma-separated numbers' do
      calc = StringCalculator.new
      expect(calc.add('1,2,3,4,5')).to eq(15)
    end

    it 'returns the sum for multiple numbers with new lines between numbers as delimiters' do
      calc = StringCalculator.new
      expect(calc.add("1\n2,3\n4,5")).to eq(15)
    end

    it 'supports custom delimiters as specified at the start of the string' do
      calc = StringCalculator.new
      expect(calc.add("//;\n1;2")).to eq(3)
    end

    it 'throws an error for a single negative number' do
      calc = StringCalculator.new
      expect { calc.add('1,-2,3') }.to raise_error("negative numbers not allowed -2")
    end

    it 'throws an error listing all negative numbers if multiple are present' do
      calc = StringCalculator.new
      expect { calc.add('-1,-2,3') }.to raise_error("negative numbers not allowed -1,-2")
    end

  end
end
