Dare.destroy_all
puts "Removing previous Dares"

######## DARES ########
soft_dares = [
  "Do a 'show and tell' with the ENTIRE contents of your purse.",
  "Pick your nose and eat it in front of the group.",
  "Eat an entire loaf of bread by yourself (no toppings)",
  "Put an ice cube down your back.",
  "Lick a bar of soap",
  "Wear dirty socks belonging to somebody else."
]

party_dares = [
  "Make up a president's inauguration speech",
  "Do a strip-tease",
  "Let people take a picture of you in a weird pose",
  "Wear an outfit chosen by your friends",
  "Take off a piece of clothes",
  "Drink a cocktail made by the other players",
  "Do 2 shots in a row",
  "Call a random phone number and talk to that person for as long as you can",
  "Take a sneaky pic of all the players, without them knowing",
  "Take a shot of vodka",
  "Have a shot without using your hands"
]

nasty_dares = [
  "Smear dog poop on your face.",
  "Lick someone elses puke",
  "Snort some Sour Patch Kids",
  "Drink hand sanitizer",
  "Drink a cup of toilet water"
]

nerve_dares = [
  ""
]

party_dares.each do |dare|
  Dare.create(content: dare)
end
puts "seeded dares"
###########################

######## USER DARES ########

############################
