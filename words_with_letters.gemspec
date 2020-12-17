require_relative 'lib/words_with_letters/version'

Gem::Specification.new do |spec|
  spec.name          = "words_with_letters"
  spec.version       = WordsWithLetters::VERSION
  spec.authors       = ["David"]
  spec.email         = ["davie668@gmail.com"]

  spec.summary       = "Counts the number of words containing letters"
  spec.description   = "a small gem that counts the number of words in a provided dictionary which contain any of up to three letters."
  spec.homepage      = "https://dcyoung.dev"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/VSM-Dave/words_with_letters"
  spec.metadata["changelog_uri"] = "https://github.com/VSM-Dave/words_with_letters"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
