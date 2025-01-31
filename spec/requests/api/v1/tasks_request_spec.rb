require 'rails_helper'

RSpec.describe "Tasks api" do
  before(:all) do
    Task.create(title: "Feed the cat", description: "Test")
    Task.create(title: "Do the dishes", description: "Test")
  
  end
  
  it "sends a list of Tasks" do
    get "/api/v1/tasks"

    expect(response).to be_successful
  end
end
