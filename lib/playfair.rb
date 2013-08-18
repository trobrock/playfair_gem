require "playfair/version"

require "her"

require "playfair/client"
require "playfair/base"
require "playfair/user"
require "playfair/instance"

module Playfair
  def self.client
    Client.instance
  end
end
