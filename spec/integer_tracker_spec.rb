require_relative "../integer_tracker"

describe IntegerTracker do
  describe "#track" do
    it 'adds the given number to the data' do
      integer_tracker = IntegerTracker.new

      integer_tracker.track(1)

      expect(integer_tracker.data).to eq [1]
    end
  end

  describe "#get_max" do
    it 'returns the largest number in the dataset' do
      integer_tracker = IntegerTracker.new

      integer_tracker.track(1)
      integer_tracker.track(0)

      expect(integer_tracker.get_max).to eq 1
    end
  end

  describe "#get_min" do
    it 'returns the smallest number in the dataset' do
      integer_tracker = IntegerTracker.new

      integer_tracker.track(1)
      integer_tracker.track(0)

      expect(integer_tracker.get_min).to eq 0
    end
  end

  describe "#get_mean" do
    it 'returns the average of the dataset' do
      integer_tracker = IntegerTracker.new

      integer_tracker.track(1)
      integer_tracker.track(0)

      expect(integer_tracker.get_mean).to eq 0.5
    end
  end

  describe "#get_mode" do
    it 'returns the mode of the dataset' do
      integer_tracker = IntegerTracker.new

      integer_tracker.track(1)
      integer_tracker.track(0)
      integer_tracker.track(1)

      expect(integer_tracker.get_mode).to eq 1
    end
  end
end
