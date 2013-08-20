module Playfair
  class User < Base
    has_many :instances

    def self.me
      get "/settings"
    end
  end
end
