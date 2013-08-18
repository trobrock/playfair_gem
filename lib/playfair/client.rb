module Playfair
  class Client
    include Singleton

    attr_accessor :email, :password
    attr_reader   :api

    def configure
      yield self

      @api = Her::API.new
      @api.setup url: "https://playfairapp.com" do |c|
        c.basic_auth @email, @password
        c.use Faraday::Request::UrlEncoded
        c.use Her::Middleware::DefaultParseJSON
        c.use Faraday::Adapter::NetHttp
      end
    end
  end
end
