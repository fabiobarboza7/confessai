ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV["GMAIL_ADDRESS"],
  password: ENV["GMAIL_APP_PASSWORD"],
  authentication: :login,
  enable_starttls_auto: true
}

# Usar Heroku config:set GMAIL_APP_PASSWORD=****** para configurar as ENV