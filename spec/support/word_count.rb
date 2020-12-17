RSpec.shared_examples "word count" do |param_expectation_map|
  param_expectation_map.each do |(test_letters, expected)|
    context "when letters #{test_letters.inspect}" do
      let(:words) { test_words }
      let(:letters) { test_letters }

      if test_letters.count > 3
        it "raises exception" do
          expect{subject}.to raise_error(expected)
        end
      else
        it { is_expected.to be(expected) }
      end
    end
  end
end
