class Time
  # Returns true when self indicates AM
  # @return [Boolean]
  # @example
  #   Time.now.am? => true or false
  def am?
    hour < 12
  end

  # Returns true when self indicates PM
  # @return [Boolean]
  # @example
  #   Time.now.pm? => true or false
  def pm?
    hour >= 12
  end
end
