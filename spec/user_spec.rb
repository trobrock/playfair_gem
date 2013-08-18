require 'spec_helper'

describe Playfair::User do
  before do
    stub_api_for(Playfair::User) do |stub|
      stub.get("/settings") { |env| [200, {}, MultiJson.dump({ id: 1, email: "bob@example.com" })] }
    end
  end

  it "should be able to retrieve the authenticated user" do
    Playfair::User.me.email.should == "bob@example.com"
  end
end
