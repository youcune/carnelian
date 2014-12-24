require 'active_support/core_ext/object/try'

class Object
  # Chain calls Object#try
  # @params [Array] args
  # @return [Object] result of Object#try
  # @example
  #   %w(ABC DEF GHI).try_chain(:first) # => "ABC"
  #   %w(ABC DEF GHI).try_chain(:first, :chop, :succ) # => "AC"
  #   %w(ABC DEF GHI).try_chain(:first, :invalid_method, :chop, :succ) # => nil
  def try_chain(*args)
    args.inject(self) { |_, method| _.try(method) }
  end
end
