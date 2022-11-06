source "https://rubygems.org"

gem 'bundler', '~> 2.3.12'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'jekyll-multiple-languages-plugin'
  gem "jekyll-feed", "~> 0.12"
  gem 'jekyll-paginate'
  gem 'jekyll-gist'
  gem 'jekyll-toc'
end

gem 'kramdown-parser-gfm'

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Jekyll <= 4.2.0 compatibility with Ruby 3.0
gem "webrick", "~> 1.7"
