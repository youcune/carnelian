class String
  # Generates a password
  # @param options [Hash]
  # @optional option [Integer] length
  # @example
  #   String.mkpasswd # => "ZCLXangKu7xFk4SN"
  #   String.mkpasswd(length: 8) # => "av7AGr8q"
  def self.mkpasswd(length: 16)
    chars = (('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a)
    Array.new(length){ chars[rand(chars.size)] }.join('')
  end
end
