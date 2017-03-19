Clearance.configure do |config|
  config.mailer_sender = "reply@example.com"
  config.rotate_csrf_on_sign_in = true
  config.routes = false
  config.user_model = User
  config.cookie_expiration = lambda { nil }
end
