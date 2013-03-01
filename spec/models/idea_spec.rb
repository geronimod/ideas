require "spec_helper"
# require 'ruby-debug'

describe Idea do
  it "should validate the content on creation" do
    idea = Idea.new
    # debugger
    expect(idea.save).to eq(false)
    #expect(idea.errors.size).to eq(1)
    expect(idea.errors[:content]).to eq(["can't be blank"])
  end
  
  it "validate the user asociate to the idea" do
    user = User.create email:"pepe@mail.com", password:"1234" 
    idea = Idea.new content:"idea" 
    idea.user = user
    
    expect(idea.user).to eq(user)
  end
end
