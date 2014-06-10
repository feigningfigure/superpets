animals = ["dog", "cat", "mouse", "rat", "parrot", "owl", "ferret", "fish", "hamster", "gerbil", "bunny", "snake", "lizard", "chameleon", "turtle", "starfish", "gecko", "tarantula", "kitten", "puppy", "canary", "horse", "chinchilla"]

superpowers = ["heat-vision", "fire-breath", "slow-motion kung fu", "kung fu grip", "hypnotiq eyes", "poisonous kisses", "super strength", "invisibility", "coding knowledge", "telekenesis", "house brokenness", "super speed", "x-ray vision", "super sneeze", "super photogenisis", "super allergens"]

25.times do
  # create a chef and shovel them onto temp array
  new_superpet = Superpet.create({
    name: Faker::Name.first_name,
    type: animals.sample,
    superpower: superpowers.sample,
    strength: rand(1..10)
    })