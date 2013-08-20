require 'spec_helper'

describe Playfair::User do
  before do
    stub_api_for(Playfair::Instance) do |stub|
      stub.get("/users/1/instances") { |env| [200, {}, MultiJson.dump([{ id: 2, state: "queued" }])] }
    end

    stub_api_for(Playfair::User) do |stub|
      stub.get("/settings") { |env| [200, {}, MultiJson.dump({ id: 1, email: "bob@example.com" })] }
    end
  end

  it "should be able to retrieve the authenticated user" do
    Playfair::User.me.email.should == "bob@example.com"
  end

  it "should have instances" do
    Playfair::User.me.instances.first.id.should == 2
  end
end
