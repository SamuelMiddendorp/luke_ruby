require_relative "message"
class User
    attr_accessor :name,:messages
    def initialize(name)
        @name = name
        @messages = []
    end
    def remove_message(message)
        @messages.delete(message)
    end
    def post_message(body)
        newMessage = Message.new(body, self)
        @messages << newMessage
        newMessage
    end
    def get_messages()
        @messages
    end
end