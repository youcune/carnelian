class Numeric
  # Returns true with probability self
  # @return [bool]
  # @example
  #   30.percent  # => true or false
  #   0.percent   # => false
  #   100.percent # => true
  def percent
    Random.rand(0.0 ... 100) < self
  end
end
