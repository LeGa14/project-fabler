Story.destroy_all

# Character Seeds
user = Character.create({
    name: "User",
    image_url: "https://t4.ftcdn.net/jpg/00/97/00/07/240_F_97000702_MH1aZ3sKAlkaylVkd4knvIo6PA7IcpQp.jpg"
})

gary = Character.create({
    name: "Gary",
    image_url: "https://vignette.wikia.nocookie.net/fairlyoddparents/images/2/2d/ImaginaryGary33.png/revision/latest?cb=20110202224115&path-prefix=en"
})
guy = Character.create({
    name: "guy",
    image_url: "https://orig00.deviantart.net/169f/f/2014/285/3/3/generic_guy_doodle__63_by_khatake-d82ipiv.png"
})

girl = Character.create({
    name: "girl",
    image_url: "http://www.theouthousers.com/images/jck/olson1.jpg"
})

# Setting Seeds
beach = Setting.create({
    name: "Beach",
    image_url: "http://www.miamiandbeaches.com/-/media/Images/MiamiandBeaches/Things-To-Do/Beaches/green-lifeguard-stand-456x406.jpg"
})
forest = Setting.create({
    name: "Forest",
    image_url: "https://www.centerpartiet.se/images/18.6ec93a8d16029729a241e8c/1513346226139/solar-2285763_960_720.jpg"
})

pcm = Setting.create({
    name: "Ponce City Market",
    image_url: "https://www.atlanta.net/uploadedImages/Content/Things_To_Do/Shopping/ponce-city-market-joleen-pete-photography-748x448.jpg"
})

# Prop seeds
stick = Prop.create({
    name: "stick",
    image_url: "https://d1u5p3l4wpay3k.cloudfront.net/theforest_gamepedia/thumb/7/70/UpgradedStickFarket.png/250px-UpgradedStickFarket.png?version=89bdba96ad1ce191f8cf7dffb356462d",
})
book = Prop.create({
    name: "book",
    image_url: "https://cdn5.vectorstock.com/i/thumb-large/71/74/open-book-vector-1237174.jpg",
})
tree = Prop.create({
    name: "tree",
    image_url: "https://i.imgur.com/lUEc2K1.jpg",
})
chair = Prop.create({
    name: "lawn chair",
    image_url: "http://cdn.supadupa.me/shop/2744/images/837257/Toy_Wood_Lawn_Chair_Folding_Chair__royal_blue_fabric_%283%29_grande.JPG",
})
shades = Prop.create({
    name: "sunglasses",
    image_url: "https://cdn.shopify.com/s/files/1/0898/5824/products/QUAY_VIVIENNE_BLACK_SMOKE_FRONT_1024x1024.jpg?v=1531352844",
})
tesla = Prop.create({
    name: "tesla",
    image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--yTJnbjEM--/c_scale,f_auto,fl_progressive,q_80,w_800/gk6c9vitz5mm9sllkxs0.jpg",
})

#Event Seeds
event = Event.create({
    title: "Something Happens",
    subject: "Somebody or Something",
    action: "does",
    object: "something"
})
run = Event.create({
    title: "They Run",
    subject: "Those people",
    action: "run away"
})

happening = Happening.create({
    title: "Something's Happening",
    subject: "Somebody or Something",
    action: "are doing things"
})

# Scenario seeds
scenarioOne = Scenario.create({
    title: "Scenario One",
    event_id: event.id,
    existent_id: tesla.id
})
# Story seeds
story = Story.create({
    title: "A Story",
    # type: "Example",
    scenario_id: scenarioOne.id,
    existent_id: scenarioOne.existent_id,
    event_id: scenarioOne.event_id
})



puts "Seeds ADDED!"