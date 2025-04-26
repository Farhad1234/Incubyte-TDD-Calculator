class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # This regex picks up both comma and new line separators
    delimiter = /,|\n/
    # Also the question doesn't state whether comma and newline delimiters are allowed when using custom delimiters
    # Since I wasn't sure, I have not implemented that here, but could be done by modifying the delim here
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter_line[2])
      delimiter = /#{delimiter}/
    end

    # Another case I wasn't sure about is whether expressions that evaluate to 0 should throw an error or not
    # eg-"abcd".to_i would return 0. Im not explicitly making it throw an error in that case, so it just treats it as 0

    input_numbers = numbers.split(delimiter).map(&:to_i)
    input_numbers.sum
  end
end
