class String
  # Generates a password
  # @param options [Hash]
  # @optional option [Integer] length
  def self.mkpasswd(length: 16)
    chars = (('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a)
    Array.new(length){ chars[rand(chars.size)] }.join('')
  end
end
