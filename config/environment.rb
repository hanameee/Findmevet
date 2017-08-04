# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['YOUR_SENDGRID_USERNAME'],
  :password => ENV['YOUR_SENDGRID_PASSWORD'],
  :domain => 'doctor-teddy-ggingmin.c9users.io',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}