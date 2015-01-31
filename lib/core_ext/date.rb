class Date
  # Returns YYYY/MM/DD style of date
  # @return [String]
  # @example
  #   Date.today.slash # => 2015/01/31
  def slash
    strftime('%Y/%m/%d')
  end
end
