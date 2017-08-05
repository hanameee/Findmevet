# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address:        "smtp.sendgrid.net",
  port:           587,
  domain:         "doctor-teddy-ggingmin.c9users.io",
  authentication: :plain,
  user_name:      ENV['API_KEY'],
  password:       Rails.application.secrets.sendgrid_api_key
}