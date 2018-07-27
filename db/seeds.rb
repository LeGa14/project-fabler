Character.destroy_all
Setting.destroy_all
Prop.destroy_all

# Character Seeds
user = Character.create({
    name: "User",
    image_url: "https://t4.ftcdn.net/jpg/00/97/00/07/240_F_97000702_MH1aZ3sKAlkaylVkd4knvIo6PA7IcpQp.jpg"
})

gary = Character.create({
    name: "Gary",
    image_url: "https://t4.ftcdn.net/jpg/00/97/00/07/240_F_97000702_MH1aZ3sKAlkaylVkd4knvIo6PA7IcpQp.jpg"
})

# Setting Seeds
place = Setting.create({
    name: "Place",
    image_url: "https://media.istockphoto.com/vectors/abstract-city-map-illustration-vector-id518371862?k=6&m=518371862&s=612x612&w=0&h=co2cRKZZrjPvbWL57h3IutkeaMxiCq6YU4i09udjSNQ="
})
library = Setting.create({
    name: "Library",
    image_url: "https://hips.htvapps.com/htv-prod-media.s3.amazonaws.com/images/library-generic-1502313953.jpg?crop=1.00xw:1.00xh;0,0&resize=640:*"
})
mountain = Setting.create({
    name: "Mountain Top",
    image_url: "https://thumbs.dreamstime.com/b/mountain-top-rough-generic-tops-italian-swiss-alps-66850918.jpg"
})
# Prop seeds
item = Prop.create({
    name: "just an item",
    image_url: "https://nothingaboutscotthere.files.wordpress.com/2014/12/money-suit.jpg",
    character_id: user.id,
})
book = Prop.create({
    name: "book",
    image_url: "https://cdn5.vectorstock.com/i/thumb-large/71/74/open-book-vector-1237174.jpg",
    setting_id: library.id
})
goat = Prop.create({
    name: "goat",
    image_url: "https://cdn2.vectorstock.com/i/thumb-large/50/36/goat-vector-3315036.jpg",
    setting_id: mountain.id
})

# Action seeds
crawl = Action.create({
    doing: "is crawling."
})
walk = Action.create({
    doing: "is walking."
})
run = Action.create({
    doing: "is running."
})

puts "Seeds ADDED!"