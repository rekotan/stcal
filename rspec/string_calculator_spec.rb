require_relative '../string_calculator'

describe StringCalculator do
  it 'takes empty string and returns 0' do
    StringCalculator.add('').should == 0
  end
  it 'takes 1 string and returns its number' do
    StringCalculator.add('1').should == 1
  end
  it 'takes 2 strings and returns their sum' do
    StringCalculator.add('1,2').should == 3
  end
  it 'takes 10 strings and returns their sum' do
    StringCalculator.add('1,2,3,4,5,6,7,8,9,10').should == 55
  end
end
