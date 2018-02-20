require_relative "../integer_tracker"

describe IntegerTracker do
  let(:integer_tracker) { IntegerTracker.new }

  before do
    integer_tracker.track(1)
    integer_tracker.track(0)
  end

  describe "#track" do
    it 'adds the given number to the data' do
      expect(integer_tracker.data).to eq [1, 0]
    end
  end

  describe "#get_max" do
    it 'returns the largest number in the dataset' do
      expect(integer_tracker.get_max).to eq 1
    end
  end

  describe "#get_min" do
    it 'returns the smallest number in the dataset' do
      expect(integer_tracker.get_min).to eq 0
    end
  end

  describe "#get_mean" do
    it 'returns the average of the dataset' do
      expect(integer_tracker.get_mean).to eq 0.5
    end
  end

  describe "#get_mode" do
    it 'returns the mode of the dataset' do
      2.times { integer_tracker.track(2) }

      expect(integer_tracker.get_mode).to eq 2
    end

    context "when there are multiple modes"do
      it 'returns one of them' do
        [2, 2, 1, 1, 3, 3].each { |num| integer_tracker.track(num) }

        expect([1, 2, 3]).to include(integer_tracker.get_mode)
      end
    end
  end
end
