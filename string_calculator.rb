class StringCalculator

  DELIMITER_REGEX = /[,\n]/

  class << self
    def add(numbers='')
      numbers.split(DELIMITER_REGEX, -1).inject(0) do |c, v|
	raise "Invalid argument: #{numbers}" unless (Float(v) rescue false)
	c + v.to_i
      end
    end
  end
end
