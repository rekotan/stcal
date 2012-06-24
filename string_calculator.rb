class StringCalculator

  DEFAULT_DELIMITER_REGEX = /[,\n]/
  DELIMITER_REGEX = /^\/\/([^\n]+)\n/

  class << self
    def add(numbers='')
      negatives = []
      result = numbers_to_array(numbers).inject(0) do |c, v|
	raise "Invalid argument: #{numbers}" unless (Float(v) rescue false)
	negatives << v if v.to_i < 0
	c + v.to_i
      end
      raise "negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?
      result
    end
    private
    def numbers_to_array(numbers)
      if DELIMITER_REGEX =~ numbers
	numbers.split("\n", 2).last.split($1, -1)
      else
	numbers.split(DEFAULT_DELIMITER_REGEX, -1)
      end
    end
  end
end
