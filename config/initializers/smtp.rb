ActionMailer::Base.smtp_settings = {
    address: 'smtp.sendgrid.net',
    port: 587,
    domain: 'https://polar-fjord-26884.herokuapp.com/',
    user_name: ENV['SENDGRID_USERNAME'],
    password: ENV['SENDGRID_PASSWORD'],
    authentication: :login,
    enable_starttls_auto: true
}