class Blink < ActiveRecord::Base
  require 'pi_piper'
  include PiPiper

  def self.make_it_blink(settings)
    pin         = settings[:blink][:gpio].to_i
    rate        = settings[:blink][:rate].to_f
    blink_count = settings[:blink][:total_blinks].to_i
    target_pin  = PiPiper::Pin.new(:pin => pin, :direction => :out)
    puts "blink_count => #{blink_count}"
    (1..blink_count).each do |n|
      puts "n => #{m}"
      if n.odd?
        target_pin.on
      else
        target_pin.off
      end
      sleep rate unless n == blink_count
    end
    File.open("/sys/class/gpio/unexport","w") { |f| f.write(pin) }
  end
end
