Clearance.configure do |config|
  config.mailer_sender = "reply@example.com"
  config.routes = false
  config.cookie_expiration = lambda { nil }
end
