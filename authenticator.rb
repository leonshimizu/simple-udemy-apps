users = [
  {username: "stassie", password: "password1"},
  {username: "clai", password: "password2"},
  {username: "leon", password: "password3"},
  {username: "dafne", password: "password4"},
  {username: "john", password: "password5"}
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  return "Credentials were not correct"
end

p "Welcome to the Authenticator!"
p "-" * 25
p "This program will take input from the user and compare the password"
p "If the username and password are correct, the user will receive the message"

attempts = 1
while attempts < 4
  p "Username:"
  username = gets.chomp 
  p "Password:"
  password = gets.chomp

  authentication = auth_user(username, password, users)
  p authentication

  p "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase 
  
  break if input == "n"
  
  attempts += 1
end
puts "You have exceeded the number of attempts." if attempts == 4