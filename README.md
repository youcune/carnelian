# Carnelian

Carnelian, ActiveSupport more.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'carnelian', github: 'youcune/carnelian'
```

And then execute:

    $ bundle

## Usage

### Object#try_chain

chain calls Object#try.

```rb
%w(ABC DEF GHI).try_chain(:first) # => "ABC"
%w(ABC DEF GHI).try_chain(:first, :chop, :succ) # => "AC"
%w(ABC DEF GHI).try_chain(:first, :invalid_method, :chop, :succ) # => nil
```

### String#mkpasswd

generates a password. (Class method)

```rb
String.mkpasswd # => "ZCLXangKu7xFk4SN"
String.mkpasswd(length: 8) # => "av7AGr8q"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/carnelian/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
