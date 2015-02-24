class Integer
  # Returns comma-split String
  # @return [String]
  # @example
  #   10000.split   # => "10,000"
  #   1.split       # => "1"
  #   -100000.split # => "-100,000"
  def comma
    to_s.reverse.gsub(/(\d{3})(?=\d)/, '\1,').reverse
  end
end
