Ideas::Application.config.action_mailer.delivery_method = :smtp
Ideas::Application.config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'ideas.com',
  :user_name            => 'mcordero@devspark.com',
  :password             => '4Rg3nt1n4',
  :authentication       => 'plain',
  :enable_starttls_auto => true  
}