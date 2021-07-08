# frozen_string_literal: true

# helper for static pages
module StaticHelper
  def intro
    <<~TXT.gsub("\n", '')
      One of the classic electronic analogy to "Hello World"  is to make an LED blink.
      Raspberry Pi has 8 General Purpose Input/Output  pins( 4,17,18,21,22,23,24,25)
      which can be configured as input/output and turned on/off via software.
      This website will allow you to operate an LED connected to a GPIO pin.
    TXT
  end

end
