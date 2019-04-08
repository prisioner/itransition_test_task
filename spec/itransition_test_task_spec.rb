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
end
