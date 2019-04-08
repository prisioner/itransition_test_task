require "itransition_test_task"

RSpec.describe ItransitionTestTask do
  describe "max_multiplication" do
    subject { described_class.max_multiplication(input_string) }

    context "when not-a-string passed" do
      let(:input_string) { 12345 }
      it "returns nil" do
        expect(subject).to be_nil
      end
    end

    context "when string passed" do
      context "when string doesn't contain 4 digits in a row" do
        let(:input_string) { "a1b2c3d4e" }

        it "returns nil" do
          expect(subject).to be_nil
        end
      end

      context "when max multiplication in beginning of digits row" do
        let(:input_string) { "abc45231def" }

        it "returns max multiplication" do
          expect(subject).to eq 120
        end
      end

      context "when max multiplication in the end of digits row" do
        let(:input_string) { "abc12345def" }

        it "returns max multiplication" do
          expect(subject).to eq 120
        end
      end

      context "when max multiplication in the middle of digits row" do
        let(:input_string) { "abc123451def" }

        it "returns max multiplication" do
          expect(subject).to eq 120
        end
      end
    end
  end

  describe "sort_by_binaries" do
    subject { described_class.sort_by_binaries(input_array) }

    context "when decimals sorted" do
      let(:input_array) { [3, 7, 8, 9] }

      it "returns correctly sorted array" do
        expect(subject).to eq [8, 3, 9, 7]
      end
    end

    context "when decimals reverse-sorted" do
      let(:input_array) { [9, 8, 7, 3] }

      it "returns correctly sorted array" do
        expect(subject).to eq [8, 3, 9, 7]
      end
    end

    context "when decimals shuffled" do
      let(:input_array) { [8, 9, 3, 7] }

      it "returns correctly sorted array" do
        expect(subject).to eq [8, 3, 9, 7]
      end
    end
  end
end
