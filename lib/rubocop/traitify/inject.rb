# Straight up ripped from Airbnb ripped from Rspec
# https://github.com/airbnb/ruby/blob/master/rubocop-airbnb/lib/rubocop/airbnb/inject.rb
# https://github.com/nevir/rubocop-rspec/blob/master/lib/rubocop/rspec/inject.rb
require "yaml"

module RuboCop
  module Traitify
    # Because RuboCop doesn't yet support plugins, we have to monkey patch in a
    # bit of our configuration.
    module Inject
      def self.defaults!
        path = CONFIG_DEFAULT.to_s
        hash = ConfigLoader.load_file(path).to_hash
        config = Config.new(hash, path)
        puts "configuration from #{path}" if ConfigLoader.debug?
        config = ConfigLoader.merge_with_default(config, path)
        ConfigLoader.instance_variable_set(:@default_configuration, config)
      end
    end
  end
end
