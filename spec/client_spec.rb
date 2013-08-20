require 'spec_helper'

describe Playfair::Client do
  subject { Playfair::Client.instance }

  it 'should configure the client' do
    subject.configure do |c|
      c.email = "bob@example.com"
      c.password = "test"
    end

    subject.email.should == "bob@example.com"
    subject.password.should == "test"

    subject.api.should be_a(Her::API)
    subject.api.base_uri.should == "https://playfairapp.com"
  end

  it 'should have a configurable endpoint' do
    subject.configure do |c|
      c.endpoint = "https://example.com"
    end

    subject.api.base_uri.should == "https://example.com"
  end
end
