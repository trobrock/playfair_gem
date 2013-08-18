module Playfair
  class User < Base
    def self.me
      get "/settings"
    end
  end
end
