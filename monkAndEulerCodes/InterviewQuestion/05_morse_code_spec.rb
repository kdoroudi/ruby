$LOAD_PATH.unshift File.dirname __FILE__
require "rspec"
require "05_morse_code"

describe "morse_code" do
  it "should work" do
    expect(morse_encode("Kaveh")).to eq("-.- .- ...- . ....") 
  end
end
