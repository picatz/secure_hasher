require "spec_helper"

RSpec.describe SecureHasher do

  it "has a version number" do
    expect(SecureHasher::VERSION).not_to be nil
  end
  
  it "has an easter egg number" do
    expect(SecureHasher.documentation_hard?).to be true
  end

end
