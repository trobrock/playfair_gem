module Playfair
  class Base
    include Her::Model
    use_api -> { Playfair.client.api }
  end
end
