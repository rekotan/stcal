class StringCalculator

  DELIMITER = ','

  class << self
    def add(numbers='')
      n = numbers.split(DELIMITER)
      case n.size
      when 0
	return 0
      when 1
	n.first.to_i
      when 2
	n[0].to_i + n[1].to_i
      else
	raise "Invalid argument: #{numbers}"
      end
    end
  end
end
