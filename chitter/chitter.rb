require_relative "user"
require 'json'
class Chitter
    attr_accessor :users, :current_user
    def initialize()
        @users = []
    end
    def start_session(name)
        newUser = User.new(name)
        @current_user = newUser
        @users << newUser
    end
    def remove_message(message)
        @current_user.remove_message(message)
    end
    def post_message(body)
        @current_user.post_message(body)
    end
    def get_messages()
        @current_user.get_messages()
    end
    def get_all_users()
        @users
    end
end
        