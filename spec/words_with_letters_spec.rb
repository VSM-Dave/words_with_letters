RSpec.describe WordsWithLetters do
  let(:test_words) { %w[Usual Aging Cigar Gator Hog Jogging Juniper Mozzarella Lasagna MacDonald Ranger] }

  it "has a version number" do
    expect(WordsWithLetters::VERSION).not_to be nil
  end

  describe "#count_words_with_all_letters" do
    subject { described_class.count_words_with_all_letters(words, letters) }
    param_expectation_map = [
      [[], 0],
      [["a"], 8],
      [["g"], 7],
      [%w[a g], 5],
      [%w[a c], 2],
      [%w[a g r], 3],
    ]
    it_should_behave_like "word count", param_expectation_map

    context "when no words" do
      let(:test_words) {[]}
      param_expectation_map = [
        [[], 0],
        [["a"], 0],
        [["g"], 0],
        [%w[a g], 0],
        [%w[a c], 0],
        [%w[a g r], 0],
      ]
      it_should_behave_like "word count", param_expectation_map
    end

    context "when words is nil" do
      let(:test_words) {nil}
      param_expectation_map = [
        [[], 0],
        [["a"], 0],
        [["g"], 0],
        [%w[a g], 0],
        [%w[a c], 0],
        [%w[a g r], 0],
      ]
      it_should_behave_like "word count", param_expectation_map
    end
  end

  describe "#count_words_with_any_letters" do
    subject { described_class.count_words_with_any_letters(words, letters) }
    param_expectation_map = [
      [[], 0],
      [["a"], 8],
      [["g"], 7],
      [%w[a g], 10],
      [%w[a c], 8],
      [%w[a g r], 11],
    ]
    it_should_behave_like "word count", param_expectation_map

    context "when no words" do
      let(:test_words) {[]}
      param_expectation_map = [
        [[], 0],
        [["a"], 0],
        [["g"], 0],
        [%w[a g], 0],
        [%w[a c], 0],
        [%w[a g r], 0],
      ]
      it_should_behave_like "word count", param_expectation_map
    end

    context "when words is nil" do
      let(:test_words) {nil}
      param_expectation_map = [
        [[], 0],
        [["a"], 0],
        [["g"], 0],
        [%w[a g], 0],
        [%w[a c], 0],
        [%w[a g r], 0],
      ]
      it_should_behave_like "word count", param_expectation_map
    end
  end
end
