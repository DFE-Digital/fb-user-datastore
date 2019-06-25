Raven.configure do |config|
  config.dsn = ENV['SENTRY_DSN']

  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  config.sanitize_fields += ['X-Access-Token']
end
