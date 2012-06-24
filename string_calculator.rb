class StringCalculator

  DEFAULT_DELIMITER_REGEX = /[,\n]/
  DELIMITER_REGEX = /^\/\/([^\n]+)\n/

  class << self
    def add(numbers='')
      numbers_to_array(numbers).inject(0) do |c, v|
	raise "Invalid argument: #{numbers}" unless (Float(v) rescue false)
	c + v.to_i
      end
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
