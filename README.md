# SecureHasher

Secure Hasher provides a simple Ruby API to to securely encrypt passwords.

Under the hood, Secure Hasher is quite obviously flawed relying on an old school unix-style crypt method. This gem provides a perfect example of how not to manage passwords.

## Installation

    $ gem install secure_hasher

## Usage

```ruby
SecureHasher.secure_hash(password: 'mypassword', salt: 'salt')
=> "sayVb7E97UXnw"
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

