class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    # Im using this regex to pick up both comma and new line separaters when splitting
    input_numbers = numbers.split(/,|\n/).map(&:to_i)
    input_numbers.sum
  end
end
