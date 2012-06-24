class StringCalculator

  DELIMITER = ','

  class << self
    def add(numbers='')
      numbers.split(DELIMITER).inject(0) { |c, v| c + v.to_i }
    end
  end
end
