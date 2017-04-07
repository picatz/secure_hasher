module SecureHasher
  # Securely apply a one-way cryptographic hash.
  # 
  # @param password [String] Plaintext password.
  # @param salt     [String] Password salt. Default: +xx+
  # @return         [String]
  # @raise          [ArgumentError] No password provided. 
  # 
  # @example Basic Usage
  #   SecureHasher.hash('mypassword')
  #   # => "xx.sEzWY1w1qk"
  #
  # @example Advanced Usage
  #   SecureHasher.hash('mypassword', 'xy')
  #   # => "xyoxiBrqcbujE"
  #
  def self.secure_hash(password: false, salt: 'xx')
    # Must provide a password.
    raise Error, 'No password provided.' unless password
    # Hash password.
    password.crypt(salt)
  end
end
