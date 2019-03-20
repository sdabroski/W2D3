require 'tdd'

RSpec.describe do
  describe "Array" do
    describe "#my_uniq" do
      subject(:arr) { [1, 2, 1, 3, 3] }
      let(:uniq_arr) { arr.my_uniq }

      it "doesn't modify the input Array" do
        arr.my_uniq
        expect(arr).to eq [1, 2, 1, 3, 3]
      end

      it "returns a new array without duplicate elements" do
        expect(uniq_arr).to eq [1, 2, 3]
      end

      it "should not call Array#uniq" do
        expect(arr).to_not receive(:uniq)
        arr.my_uniq
      end
    end

    describe "#two_sum" do
      subject(:arr) { [-1, 0, 2, -2, 1] } 
      let(:sum_arr) { arr.two_sum }

      context "an array with actual elements is passed in" do
        it "returns pairs of indices that sum to zero" do
          expect(sum_arr).to include([0, 4], [2, 3])
        end

        it "should be in order of increasing indices" do
          expect(sum_arr).to eq [[0, 4], [2, 3]]
        end
      end

      context "an empty array is passed in" do
        it "return empty array if there are no zero-sum pairs" do
          empty_arr = [].two_sum
          expect(empty_arr).to be_empty
        end
      end
    end
  end

  describe("#my_transpose") do
    subject(:two_d_array) { [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ] }
    it "transposes successfully" do
      expect( my_transpose(two_d_array) ).to eq( [[0, 3, 6], [1, 4, 7], [2, 5, 8]] )
    end
  end


end
