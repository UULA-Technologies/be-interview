ENV["RAILS_ENV"] ||= "test"

require "spec_helper"
require File.expand_path("../config/environment", __dir__)
abort("The Rails environment is running in staging mode!") if Rails.env.staging?
abort("The Rails environment is running in production mode!") if Rails.env.production?

require "rspec/rails"
require "super_diff/rspec-rails"

Dir[Rails.root.join("spec", "_support", "helpers", "**", "*.rb")].each { |f| require f }
Dir[Rails.root.join("spec", "_support", "**", "*.rb")].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!
