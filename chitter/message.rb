class Message
    attr_accessor :body, :owner
    def initialize(body, owner)
        @owner = owner
        @body = body
    end
end