class Temperature
  def initialize(attrs)
    @attrs = attrs
  end


  def to_fahrenheit
    if @attrs[:f]
      @attrs[:f]
    else
      ((@attrs[:c].to_f * 9/5) + 32).round(1)
    end
  end

  def to_celsius
    if @attrs[:c]
      @attrs[:c]
    else
      ((@attrs[:f].to_f - 32)*5/9).round(1)
    end
  end

  def self.in_celsius(x)
    Temperature.new({:c => x})
  end

  def self.in_fahrenheit(x)
    Temperature.new({:f => x})
  end

end

class Celsius < Temperature

  def initialize(celsius)
    super({:c => celsius})
  end

end

class Fahrenheit < Temperature

  def initialize(fahrenheit)
    super({:f => fahrenheit})
  end
end