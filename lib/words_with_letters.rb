require "words_with_letters/version"

module WordsWithLetters
  class Error < StandardError; end
  class TooManyLettersError < StandardError; end

  def self.count_words_with_all_letters(words, letters = [])
    raise TooManyLettersError if letters.count > 3
    return 0 if letters.empty?
    words_with_letters = Array(words).filter { |word| letters.all? { |letter| word_includes_letters(letter, word) } }
    words_with_letters.count
  end

  def self.count_words_with_any_letters(words, letters = [])
    raise TooManyLettersError if letters.count > 3
    return 0 if letters.empty?

    words_with_letters = Array(words).filter { |word| letters.any? { |letter| word_includes_letters(letter, word) } }
    words_with_letters.count
  end

  private

  def self.word_includes_letters(letter, word)
    word.downcase.include?(letter)
  end
end
