class Array
  def self.sum
  end

  def sum
    self.inject( 0 ) { |sum, x| sum += x }
  end

  def square
    return [] if self == []
    self.map {|x| x**2}
  end

  def square!
    return [] if self == []
    self.map! {|x| x**2}
  end

end
