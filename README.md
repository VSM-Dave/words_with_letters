# Words With Letters

A gem to count the number of words in a provided dictionary which contain any of up to three letters.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'words_with_letters', :git => "git@github.com:VSM-Dave/words_with_letters.git"
```

And then execute:

    $ bundle install

## Usage

```ruby
require "words_with_letters"

words = %w[Usual Aging Cigar Gator Hog Jogging Juniper Mozzarella Lasagna MacDonald Ranger]
letters = %w[a g r]

puts WordsWithLetters.count_words_with_all_letters(words, letters)
#=> 3

puts WordsWithLetters.count_words_with_any_letters(words, letters)
#=> 11
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can
also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/VSM-Dave/words_with_letters.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
