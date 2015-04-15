class Array
  def sum
    sum = 0
    self.each do |number|
      sum += number
    end
    sum
  end
end
