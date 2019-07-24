# RuboCop Traitify

Traitify's default configuration for [RuboCop](https://github.com/rubocop-hq/rubocop).

## Installation

Until `rubocop-airbnb` is updated to support ruby 2.6 a fork is required

```
gem "rubocop-airbnb",
  git: "https://github.com/mcamara/ruby.git",
  glob: "rubocop-airbnb/*.gemspec" # Until airbnb supports ruby 2.6
gem "rubocop-traitify"
```

## Usage

Add the following to `.rubocop.yml`

```
inherit_gem:
  rubocop-traitify: .rubocop_traitify.yml
```

## Credit

Heavily influenced by (as well as dependent on) Airbnb's [configuration/plugin](https://github.com/airbnb/ruby)
