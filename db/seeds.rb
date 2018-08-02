Story.destroy_all

# Story seed
story = Story.create({
    title: "A Story I Made",
    story_type: "Example"
})

storyOne = Story.create({
    title: "An Empty Story",
    story_type: "Example"
})
storyTwo = Story.create({
    title: "A Second Empty Story",
    story_type: "Example"
})

# Scenario seeds
scenarioOne = Scenario.create({
    title: "Scenario Example One",
    story_id: story.id
})
scenarioTwo = Scenario.create({
    title: "Second Scenario",
    story_id: story.id
})

#Event seeds
run = Event.create({
    title: "Somebody is running",
    subject: "Somebody or something",
    action: "is running away",
    object: "from children",
    scenario_id: scenarioOne.id
})
walk = Event.create({
    title: "Somebody is walking",
    subject: "Somebody or something",
    action: "is walking down",
    object: "from street.",
    scenario_id: scenarioTwo.id
})


# Existents
# Character Seeds
user = Existent.create({
    name: "User",
    image_url: "https://t4.ftcdn.net/jpg/00/97/00/07/240_F_97000702_MH1aZ3sKAlkaylVkd4knvIo6PA7IcpQp.jpg",
    subject_type: "Character",
    scenario_id: scenarioOne.id
})

gary = Existent.create({
    name: "Gary",
    image_url: "https://t4.ftcdn.net/jpg/00/97/00/07/240_F_97000702_MH1aZ3sKAlkaylVkd4knvIo6PA7IcpQp.jpg",
    subject_type: "Character",
    scenario_id: scenarioTwo.id
})

# Setting Seeds
place = Existent.create({
    name: "Place",
    image_url: "https://media.istockphoto.com/vectors/abstract-city-map-illustration-vector-id518371862?k=6&m=518371862&s=612x612&w=0&h=co2cRKZZrjPvbWL57h3IutkeaMxiCq6YU4i09udjSNQ=",
    subject_type: "Setting",
    scenario_id: scenarioOne.id
})
library = Existent.create({
    name: "Library",
    image_url: "https://hips.htvapps.com/htv-prod-media.s3.amazonaws.com/images/library-generic-1502313953.jpg?crop=1.00xw:1.00xh;0,0&resize=640:*",
    subject_type: "Setting",
    scenario_id: scenarioOne.id
})
mountain = Existent.create({
    name: "Mountain Top",
    image_url: "https://thumbs.dreamstime.com/b/mountain-top-rough-generic-tops-italian-swiss-alps-66850918.jpg",
    subject_type: "Setting",
    scenario_id: scenarioTwo.id
})
# Prop seeds
item = Existent.create({
    name: "just an item",
    image_url: "https://nothingaboutscotthere.files.wordpress.com/2014/12/money-suit.jpg",
    subject_type: "Prop",
    scenario_id: scenarioOne.id
})
book = Existent.create({
    name: "book",
    image_url: "https://cdn5.vectorstock.com/i/thumb-large/71/74/open-book-vector-1237174.jpg",
    subject_type: "Prop",
    scenario_id: scenarioTwo.id
})
goat = Existent.create({
    name: "goat",
    image_url: "https://cdn2.vectorstock.com/i/thumb-large/50/36/goat-vector-3315036.jpg",
    subject_type: "Prop",
    scenario_id: scenarioOne.id
})

puts "Seeds ADDED!"