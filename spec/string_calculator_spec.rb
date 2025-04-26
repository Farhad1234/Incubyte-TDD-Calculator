require_relative '../lib/string_calculator'

describe StringCalculator do
  describe '#add' do

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

  end
end
