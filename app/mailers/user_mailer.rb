class UserMailer < ActionMailer::Base
  default :from => "no_reply@gmail.com" # if from is not specified it will be set as from.
  def welcome_email(idea)
  	addresses = Array.new()
  	idea.users.each {|x| addresses << x[:email]}
  	mail(:to => addresses, :subject => "Your Login credential")
  end
end