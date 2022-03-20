# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
small = Housingsize.create(value: "Small")
medium = Housingsize.create(value: "Medium")
large = Housingsize.create(value: "Large")
appartment = Housingsize.create(value: "Appartment")
user = User.create(email: "test@maildrop.cc", password: "123456", password_confirmation: "123456")
buyer = User.create(email: "buyer@maildrop.cc", password: "123456", password_confirmation: "123456", buyer: true)
seller = User.create(email: "seller@maildrop.cc", password: "123456", password_confirmation: "123456", seller: true)


yokkio = User.create(email: "yokkio@maildrop.cc",
                    password: "123456",
                    password_confirmation: "123456",
                    seller: true
)

yokkio_address = GameAddress.create( datacenter: "aether", location: "goblet", plot: 2, ward: 3, user_id: yokkio.id)

yokkio.avatar.attach(io: File.open(Rails.root.join('app/assets/images/profiles/yokkio_med/profile.png')), filename: 'profile.png')

yokkio_listing = Listing.create(title: "Hidden Cottage", short_body: "Tranquil setting for anyone who loves nature and calm vibes", body: "This build was made especially for a small house and will, unfortunately, take away access to the basement due to glitching. It will take 2-3 full days to build. Perfect for anyone who wants a cosy cottage feeling" ,user_id: yokkio.id, price: 95, open: true, housingsize_id: small.id)

yokkio_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/yokkio_med/1.jpg')), filename: '1.jpg')

yokkio_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/yokkio_med/2.jpg')), filename: '2.jpg')

yokkio_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/yokkio_med/3.jpg')), filename: '3.jpg')

yokkio_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/yokkio_med/4.jpg')), filename: '4.jpg')

orangejuice = User.create(email: "orangejuice@maildrop.cc",
    password: "123456",
    password_confirmation: "123456",
    seller: true
)

orangejuice_address = GameAddress.create( datacenter: "faerie", location: "mist", plot: 4, ward: 60, user_id: orangejuice.id)

orangejuice.avatar.attach(io: File.open(Rails.root.join('app/assets/images/profiles/orangejuice/profile.jpg')), filename: 'profile.jpg')

orangejuice_listing = Listing.create(title: "Dark Blue ", short_body: "An elegant European Style Villa for a large house", body: "
    This build has multiple rooms and floors as its a large house.  It includes a master bedroom, foyer, formal dining room and formal office. This build will use up all slots and will take 4-5 days to build. I can change the colour scheme if you don't want the blue! Just let me know prior. 
    " ,user_id: orangejuice.id, price: 250, open: true, housingsize_id: large.id)

orangejuice_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/orangejuice/1.jpg')), filename: '1.jpg')

orangejuice_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/orangejuice/2.jpg')), filename: '2.jpg')

orangejuice_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/orangejuice/3.jpg')), filename: '3.jpg')

orangejuice_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/orangejuice/4.jpg')), filename: '4.jpg')

lulu = User.create(email: "lulu@maildrop.cc",
    password: "123456",
    password_confirmation: "123456",
    seller: true
)

lulu_address = GameAddress.create( datacenter: "goblin", location: "lavender beds", plot: 20, ward: 40, user_id: lulu.id)

lulu.avatar.attach(io: File.open(Rails.root.join('app/assets/images/profiles/lulu/profile.jpg')), filename: 'profile.jpg')

lulu_listing = Listing.create(title: "Heavenly cross", short_body: "The stained glass windows are stunning when the light just hits right. ", body: "A quick build that won't take too long but is very effective.  I can dye the flowers, floor and mannequins in different colours so let me know if you do. This is probably one of my favourites builds to date with its simple yet impactful details its sure to make its mark on your home." ,user_id: lulu.id, price: 50, open: true, housingsize_id: small.id)

lulu_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/lulu/1.jpg')), filename: '1.jpg')

lulu_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/lulu/2.jpg')), filename: '2.jpg')

lulu_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/lulu/3.jpg')), filename: '3.jpg')

lulu_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/lulu/4.jpg')), filename: '4.jpg')


fenrir = User.create(email: "fenrir@maildrop.cc",
    password: "123456",
    password_confirmation: "123456",
    seller: true
)

fenrir_address = GameAddress.create( datacenter: "Exodus", location: "Shirogane", plot: 1, ward: 35, user_id: fenrir.id)

fenrir.avatar.attach(io: File.open(Rails.root.join('app/assets/images/profiles/fenrir/profile.jpg')), filename: 'profile.jpg')

fenrir_listing = Listing.create(title: "Bright colourful bathroom", short_body: "
    Have a relaxing soak with the tranquil sounds of water, after a  hard day  of doing Prea over and over for Moogle tokens ;o 
    ", body: "
    This build is perfect for an FC house who are wanting to add different rooms. Since this is a small room it will take 1-2 days max. 
    ." ,user_id: fenrir.id, price: 30, open: true, housingsize_id: small.id)

fenrir_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/fenrir/1.jpg')), filename: '1.jpg')

fenrir_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/fenrir/2.jpg')), filename: '2.jpg')

fenrir_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/fenrir/3.jpg')), filename: '3.jpg')

fenrir_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/fenrir/4.jpg')), filename: '4.jpg')


faeriepeach= User.create(email: "faeriepeach@maildrop.cc",
    password: "123456",
    password_confirmation: "123456",
    seller: true
)

faeriepeach_address = GameAddress.create( datacenter: "Shiva", location: "Lavender Beds", plot: 2, ward: 3, user_id: faeriepeach.id)

faeriepeach.avatar.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/p.jpg')), filename: 'p.jpg')

faeriepeach_listing = Listing.create(title: "The Viridian Suite", short_body: "A luxe, romantic hotel room perfect for a proposal or a  date", body: "This was a fun room to build especially with the indoor hot tub! The marble flooring around it really ties it all together. If you want to change the colours of the walls and cushions let me know beforehand, please!" ,user_id: faeriepeach.id, price: 120, open: true, housingsize_id: medium.id)

faeriepeach_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/5.jpg')), filename: '5.jpg')

faeriepeach_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/6.jpg')), filename: '6.jpg')

faeriepeach_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/7.jpg')), filename: '7.jpg')

faeriepeach_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/8.jpg')), filename: '8.jpg')

faeriepeach_listing = Listing.create(title: "Space bunk", short_body: "For all the space travellers out there", body: "Do you like space? Do you wish you were a space traveller visiting different planets? Then this is the build for you! Which a small space like the small rooms I have been able to create this space bunk complete with a space view of twinkling starts" ,user_id: faeriepeach.id, price: 50, open: true, housingsize_id: small.id)

faeriepeach_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/1.jpg')), filename: '1.jpg')

faeriepeach_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/2.jpg')), filename: '2.jpg')

faeriepeach_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/3.jpg')), filename: '3.jpg')

faeriepeach_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/faeriepeach/4.jpg')), filename: '4.jpg')


alauradanon= User.create(email: "alauradanon@maildrop.cc",
    password: "123456",
    password_confirmation: "123456",
    seller: true
)

alauradanon_address = GameAddress.create( datacenter: "Anima", location: "goblet", plot: 22, ward: 54, user_id: alauradanon.id)


alauradanon.avatar.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/profile1.jpg')), filename: 'profile1.jpg')

alauradanon_listing = Listing.create(title: "Stormy night dungeon cell ", short_body: "Perfect for locking up people who complain about parts of your house being blocked off ", body: "A fun build  inspired by dark souls \o/ a small dungeon cell with a perfect stormy background.  Its quite a cosy feeling, only the best for my prisoners haha.  This was done in an apartment but can also be transferred into an FC room!" ,user_id: alauradanon.id, price: 95, open: true, housingsize_id: appartment.id)

alauradanon_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/1.jpg')), filename: '1.jpg')

alauradanon_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/2.jpg')), filename: '2.jpg')

alauradanon_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/3.jpg')), filename: '3.jpg')

alauradanon_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/4.jpg')), filename: '4.jpg')


alauradanon_listing = Listing.create(title: "Mayday! Mayday!", short_body: "The SS Fluffy submarine is under attack!  Power to the controls has been lost and water is pouring in!", body: "A disaster room, about to flood if help doesn't arrive soon!  This is built around a small house with all slots being taken and no access to the basement due to glitches.  But enjoy the ambient sounds of water trying to rush into the submarine ;o " ,user_id: alauradanon.id, price: 105, open: true, housingsize_id: small.id)

alauradanon_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/5.jpg')), filename: '5.jpg')

alauradanon_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/6.jpg')), filename: '6.jpg')

alauradanon_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/7.jpg')), filename: '7.jpg')

alauradanon_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/alauradanon/8.jpg')), filename: '8.jpg')



camillus= User.create(email: "camillus@maildrop.cc",
    password: "123456",
    password_confirmation: "123456",
    seller: true
)

camillus_address = GameAddress.create( datacenter: "tonberry", location: "mist", plot: 1, ward: 40, user_id: camillus.id)


camillus.avatar.attach(io: File.open(Rails.root.join('app/assets/images/profiles/camillus/profile2.jpg')), filename: 'profile1.jpg')

camillus_listing = Listing.create(title: "Modern bar", short_body: "Fresh clean mordern bar build", body: "This super modern build is in the basement of a house, It can be any size house since this is the basement.  The cost of the build is a set price no matter the size of the house itself as all basements are the same size. Colours can be changed but i think it works best with whites, creams and marbles. 
    " ,user_id: camillus.id, price: 100, open: true, housingsize_id: small.id)

camillus_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/camillus/1.jpg')), filename: '1.jpg')

camillus_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/camillus/2.jpg')), filename: '2.jpg')

camillus_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/camillus/3.jpg')), filename: '3.jpg')

camillus_listing.photos.attach(io: File.open(Rails.root.join('app/assets/images/profiles/camillus/4.jpg')), filename: '4.jpg')



# Reviews 


r1 = Review.create( title: "Great", description: "The new bar looks amazing! I really like the new colour scheme we chose instead of white!", score: 5, reviewer_id: yokkio.id, reviewee_id: camillus.id)

r2 = Review.create( title: "Good", description: "Fantastic to work with", score: 4, reviewer_id: fenrir.id, reviewee_id: yokkio.id)

r3 = Review.create( title: "Fun new bar", description: "Love it! Get so many comments when people come to visit ", score: 5, reviewer_id: yokkio.id, reviewee_id: camillus.id)

r4 = Review.create( title: "Spooky", description: "5/5 Dungeon asthetic cant be happier to have a place to lock people up now :D", score: 5, reviewer_id: orangejuice.id, reviewee_id: alauradanon.id)

r5 = Review.create( title: " Mayday! Mayhey~", description: "
    great to work with, wish it was a little bigger though", score: 3, reviewer_id: lulu.id, reviewee_id: alauradanon.id)

r6 = Review.create( title: "beautiful", description: "What lulu managed to creat was amazing for such a small room and in a short amount of time too!", score: 5, reviewer_id: faeriepeach.id, reviewee_id: lulu.id)