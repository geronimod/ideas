require "spec_helper"
# require 'ruby-debug'

describe Idea do
  it "should validate the content on creation" do
    idea = Idea.new
    # debugger
    expect(idea.save).to eq(false)
    expect(idea.errors.size).to eq(1)
    expect(idea.errors[:content]).to eq(["can't be blank"])
  end
end