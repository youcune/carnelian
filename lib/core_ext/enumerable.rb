module Enumerable
  # Sums up all elements
  # @return [Object] result
  # @example
  #   [1, 2, 6].sum # => 9
  def sum
    self.inject(:+)
  end

  # Averages all elements
  # @return [Object] result
  # @example
  #   [1, 2, 6].avg # => 3
  def avg
    self.sum.try { |_| _ / self.size }
  end
  alias :average :avg
end
