require 'spec_helper'

describe "Ideas management", type: :feature do
  include Warden::Test::Helpers
  Warden.test_mode!
  
  before :each do
    user  = User.create email: 'test@gmail.com', password: 'test'
    @idea = Idea.new content: 'edit me'
    
    @idea.user = user
    @idea.save
    @current_ability = Ability.new user
    
    login_as user, :scope => :user
  end

  after :each do
    Warden.test_reset!
  end

  it "should redirect to idea edition page" do
    visit ideas_path
    page.find('a.action-edit').click
    page.should have_content @idea.content
  end

  xit "should show an alert to confirm deletion" do

  end
end