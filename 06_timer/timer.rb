class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours_string = @seconds/(60*60)
    minutes_string =  (@seconds-hours_string*60*60)/60
    seconds_string = @seconds % 60
    "#{padded(hours_string)}:#{padded(minutes_string)}:#{padded(seconds_string)}"
  end

  private
  def padded(number)
    number<10 ? "0#{number}" : number
  end

end
