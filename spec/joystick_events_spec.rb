
# Prefer local library over installed version.
$:.unshift( File.join( File.dirname(__FILE__), "..", "lib" ) )
$:.unshift( File.join( File.dirname(__FILE__), "..", "ext", "rubygame" ) )

require 'rubygame'
include Rubygame::Events



describe JoystickAxisMoved do
  

  it "should have a joystick id" do
    JoystickAxisMoved.new.should respond_to(:joystick_id)
  end

  it "should accept positive integers for joystick id"
  it "should reject all except positive integers for joystick id"
  it "joystick id should be read-only"


  it "should have an axis number"
  it "should accept positive integers for axis number"
  it "should reject all except positive integers for axis number"
  it "axis number should be read-only"


  it "should have a value"
  it "should only accept numbers for value"
  it "should reject non-numeric values"
  it "should convert values to float"
  it "should only accept values from -1.0 to 1.0"
  it "should reject values outside of range"
  it "value should be read-only"

end
