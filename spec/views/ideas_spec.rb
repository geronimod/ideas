require "spec_helper"
require 'ruby-debug'

describe "View" do
  it "should appear both buttons for delete and edit" do
    idea = stub_model Idea
    assign :ideas, [idea]
    render
    expect (rendered).to include(edit_idea_path(idea))
  end
end
  











