require "spec_helper"

RSpec.describe SecureHasher do
  
  describe '.hasher' do
  
    it 'will hash a password using a default salt' do
      password = SecureHasher.secure_hash(password: 'mypassword')
      expect(password[0,2]).to eq('xx')
    end
    
    it 'will hash a password with a custom salt' do
      password = SecureHasher.secure_hash(password: 'mypassword', salt: 'xy')
      expect(password[0,2] ).to eq('xy')
    end
  
  end

end
