class IntegerTracker
  attr_accessor :data

  def initialize
    @data = []
  end

  def track(number)
    data << number
  end

  def get_max
    data.max
  end

  def get_min
    data.min
  end

  def get_mean
    data.inject(&:+) / data.size.to_f
  end

  def get_mode
    data.max_by { |i| data.count(i) }
  end
end
