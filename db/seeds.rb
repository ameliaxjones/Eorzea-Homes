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


