class UserMailer < ActionMailer::Base
  default :from => "no_reply@gmail.com" # if from is not specified it will be set as from.
  def welcome_email(idea)
  	# a = Array.new()
  	# idea.users.each {|x| a << x[:email]}
  	# debugger
  	email="skahd@djk.com"
    mail(:to => email, :subject => "Your Login credential")
  end
end