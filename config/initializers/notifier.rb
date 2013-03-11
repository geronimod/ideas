Ideas::Application.config.action_mailer.delivery_method = :smtp
Ideas::Application.config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'ideas.com',
  :user_name            => '<user>@devspark.com',
  :password             => '<pass>',
  :authentication       => 'plain',
  :enable_starttls_auto => true  
}