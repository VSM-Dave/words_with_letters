RSpec.shared_examples "word count" do |param_expectation_map|
  param_expectation_map.each do |(test_letters, expected_count)|
    context "when letters #{test_letters.inspect}" do
      let(:words) { test_words }
      let(:letters) { test_letters }
      it { is_expected.to be(expected_count) }
    end
  end
end
