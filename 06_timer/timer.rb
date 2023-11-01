class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = padded(@seconds / 3600)
    minutes = padded((@seconds % 3600) / 60)
    seconds = padded(@seconds % 60)
    "#{hours}:#{minutes}:#{seconds}"
  end

  def padded(number)
    number.to_s.rjust(2, '0')
  end
end

timer = Timer.new
puts timer.seconds
puts timer.time_string
timer.seconds = 12
puts timer.time_string
timer.seconds = 66
puts timer.time_string
timer.seconds = 4000
puts timer.time_string
puts timer.padded(0)
puts timer.padded(1)
puts timer.padded(12)