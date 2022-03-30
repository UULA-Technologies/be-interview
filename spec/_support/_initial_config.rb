RSpec.configure do |config|
  config.file_fixture_path = Rails.root.join("spec", "_support", "fixtures")

  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.use_transactional_fixtures = true
end
