# frozen_string_literal: true

require_relative "lib/gtimer/version"

Gem::Specification.new do |spec|
  spec.name = "gtimer"
  spec.version = Gtimer::VERSION
  spec.authors = ["poteto"]
  spec.email = ["admin@linkall.uk"]
  spec.license = "MIT"

  spec.summary = "ブロック内の処理時間を計測するライブラリ"
  spec.description = " このライブラリは、ブロック内の処理時間を計測するためのライブラリです。"
  spec.homepage = "https://rubygems.org/gems/gtimer"
  spec.required_ruby_version = ">= 3.0.0"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/linkalls/gtimer"
  spec.metadata["changelog_uri"] = "https://github.com/linkalls/gtimer/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
      f.match(%r{\A(?:test|spec|features)/}) ||
      f == "gtimer.gemspec" ||  # この行を追加
      f == "gtimer-0.1.0.gem"  # この行を追加
    end
  end
  puts spec.files
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
