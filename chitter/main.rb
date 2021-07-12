require_relative "chitter"
chitter_app = Chitter.new()
chitter_app.start_session("Luke Usher")
chitter_app.post_message("Ay this is a message")
msg = chitter_app.post_message("Ay this is another message ay ay")
chitter_app.get_messages().each do |message|
    puts message.body
    puts message.owner.name
end
chitter_app.remove_message(msg)
chitter_app.get_messages().each do |message|
    puts message.body
    puts message.owner.name
end
chitter_app.start_session("Samuel Middendorp")
chitter_app.post_message("Ay this is a message")
chitter_app.get_messages().each do |message|
    puts message.body
    puts message.owner.name
end
puts "accessing all users in the system"
users = chitter_app.get_all_users()
users.each do |user|
    puts "User #{user.name} has #{user.messages.length()} messages"
end

