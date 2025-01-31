require 'rails_helper'

RSpec.describe "Tasks api" do

  it "sends a list of Tasks" do
    Task.create(title: "Feed the cat", description: "Test")
    Task.create(title: "Do the dishes", description: "Test")
    get "/api/v1/tasks"

    tasks = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(tasks.count).to be(2)
  end
end
