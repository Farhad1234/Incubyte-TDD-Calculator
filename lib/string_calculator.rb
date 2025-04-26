class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    input_numbers = numbers.split(",").map(&:to_i)
    input_numbers.sum
  end
end
