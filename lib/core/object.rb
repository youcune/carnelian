require 'active_support/core_ext/object/try'

class Object
  # Chain calls Object#try
  # @params [Array] args
  # @return [Object] result of Object#try
  def try_chain(*args)
    args.inject(self) { |_, method| _.try(method) }
  end
end
