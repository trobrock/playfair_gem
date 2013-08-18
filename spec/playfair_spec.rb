require 'spec_helper'

describe Playfair do
  it "should fetch a client" do
    Playfair.client.should be_a(Playfair::Client)
  end
end
