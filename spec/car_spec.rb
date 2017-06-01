require 'car'

describe 'Car' do
  describe 'attributes' do

    it " allows reading and writing for :make" do
      car = Car.new
      car.make = 'test'
      expect(car.make).to eq('test')
    end

    it " allows reading and writing for :year" do
      car = Car.new
      car.year = 1923
      expect(car.year).to eq(1923)
    end

    it " allows reading and writing for :colour" do
      car = Car.new
      car.colour = 'red'
      expect(car.colour).to eq('red')
    end

  end

  describe '.colours' do

    it 'returns an array of colours' do
      a = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match_array(a)
    end

  end

  describe '#full_name' do

    it 'returns a string in the expected format' do
      @honda = Car.new(:make => 'Honda', :year => 2004, :color => 'blue')
      expect(car.full_name).to eq('2004 Honda (blue)')
    end

    context 'when initialized with no arguments' do
      it 'returns a string with default values' do
        car = Car.new
        expect(car.full_name).to eq('2007 Volvo (unknown)')
    end
  end

end



end
