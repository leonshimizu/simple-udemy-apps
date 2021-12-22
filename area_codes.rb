dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.each do |city|
    p city
  end
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash.each do |city|
    if key == city[0]
      return city[1]
    end
  end
end
 
# Execution flow
loop do
  puts "Welcome, this is an area code finder, would you like to continue? (Y/N)"
  answer = gets.chomp.downcase 
  if answer == "y"
    puts "Please choose one of the following cities:"
    get_city_names(dial_book)
    city = gets.chomp.downcase
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}."
    break
  else
    break
  end
end