
# Eorzea Homes

### The problem

Final Fantasy 14 offers houses for their players.
They have four different sizes players can choose from:
Apartment, Small, Medium and Large.  

With housing comes decoration and design
and this is where the first problem lies. It is surprisingly
not an easy task to do, As a player you have to glitch 
furniture and items to create your ideal aesthetic which can be time consuming and 
tedious.  Another problem is that housing is considered 
'end game' content so most players who do give out their 
services for interior design, do it for in game money (gil) 
which they have abundance of and have nothing to spend it on. 


### Why it needs solving 

This is where Eorzea Homes comes in. It is a marketplace for
interior designers to showcase what they can archive with  
glitches and some flair. They then can offer their services
for actual money instead of gil (in game money)

## Deployed site

My [Heroku](https://infinite-eyrie-70014.herokuapp.com)

My [Github Repo](https://github.com/ameliaxjones/T2A2)

## Description

### Purpose

The purpose of Eorzea Homes is to easily connect FF players
who want to decorate their homes with designers who offer their
services. However this marketplace allows for anyone who plays 
FF to be a designer.


### Features
- User sign-up to allow posting and purchasing 
- User profile to keep track of in game addresses
 (as FF players can have multiple houses on different servers)
- Image upload for profile image and for designers to show off what they
can build

### Sitemap

![image](docs/wireframe.png)

### Website Screenshots

![image](docs/ssignin-out.png)
![image](docs/shome.png)
![image](docs/shome2.png)
![image](docs/show.png)
![image](docs/sdesigners.png)
![image](docs/slisting1.png)
![image](docs/slisting.png)
![image](docs/sorder.png)
![image](docs/srecipt.png)
![image](docs/sorders.png)
![image](docs/sseller-own-listing.png)


### Target audience

For any FF14 player who wants to  buy an aesthetic looking build or wants to build for others. 


### Tech stack

- HTML/CSS/JS
- Bootstrap CSS
- Ruby/Ruby On Rails
- PostgreSQL
- Devise
- Github, Heroku
- AWS for image storeage



## Stories 

### Seller stories 
- As a seller i would like to post what jobs i can offer as a listing
- As a seller I would like to set my own pricing on my listings
- As a seller i would like to control how many jobs i can offer at one time
- As a seller i would like to be able to upload images to my listings

### Buyer stories 
- As a buyer I would like to browse different listings
- As a buyer I would like to view the listing in more detail
- As a buyer I would like to purchase the listing as an Order
- As a buyer i would like to view my orders
- As a buyer I would like to view the Designer's reviews
- As a buyer i would like to be able to review Designers
- As a buyer I would like to be able to edit and delete my reviews

### User Stories (Global)
- As a User I would like to be able to sign up to the platform using my email address
- As a User I would like to be able to reset my password
- As a User I would like to be able to sign up as a seller (Designer)
- As a User I would like to log into the platform before interacting
- As a User I would like to set my avatar picture
- As a User I would like to manage my game addresses (Add, Edit, Delete)


## Wireframes



![image](docs/signin-out.png)
![image](docs/home-page.png)
![image](docs/how.png)
![image](docs/designer-page.png)
![image](docs/listing-index.png)
![image](docs/actuall-listing.png)
![image](docs/profile.png)




## ERD

![image](docs/erd.png)
![image](docs/database_design.png)
![image](docs/ERD_no_FK_min_attributes.png)

It was unclear and mixed messages were given out about the requirement for ERD, I have provided a few versions to try and cater for this.


## Abstractions

Eorzea Homes is built using Ruby on Rails and therefore uses
 the Rails architecture of Model/View/Controller. 
The Model, with the help of the ruby gem, Devise, automatically 
authenticates Users to allow them to buy and sell their 
services on Eorzea Homes as well as edit/delete their own 
listings if they need to.  The listing creation is handled by 
ActiveRecord in Rails, which creates a Model from a user 
filling out the pre-generated form created by ActiveRecord. 
When the form is submitted the listing is created in the 
database and can now be displayed in Views and Users. 
The Controller aids in this by filtering and organizing 
information from the database to determine what gets sent to 
the view page and what the user sees and interacts with.  
The View then queries the data relating to the listing and 
helps show the user specific information, made pretty with 
SCSS. 

The Models: user.rb, order.rb, listing.rb, h_cat.rb and
 game_address.rb all inherited from ApplicationRecord which 
 then inherits from ActiveRecord. Using Inheritance allows 
 characteristics of one class to inherit from another and 
 vice versa. Doing this is allows the reuse of methods that
  might be needed later on which makes the code DRY .

## Third-Party Service Integrations

- Heroku: Deployment and deployment testing
- AWS: Image hosting
- Bootstrap: Styling 

## Models & ActiveRecord Relationships

Users:
- Has Many Listings 
- Has Many Orders
- Has Many reviews as a reviewer
- Has Many reviews as a reviewee
- Has Many game address

Game Address:
- Belongs to User

Listings:
- Have one Seller 
- Have many Image 
- Have many Orders
- Have one House_cat

Orders:
- Have one Game_Address
- Have one Listing 

Reviews:
- Belongs to user as reviewer
- Belongs to user as reviewee

Housingsize:
- Has Many listings


## Database Relations

 
Every User on Eorzea Homes are able to have multiple listings
 (services they are selling) at once.  Their User ID(PK) will 
 be attached to each of these listing allowing them the seller
  to view, edit, delete their own listings from their 
  ‘My Listings” page. 

Each Listing(PK) when created will have a User ID(FK) and 
HousingSize(KF) associated with it. Same process goes for when an 
Order(PK) is created it will go to and fetch the corresponding 
data from User ID(FK), Listing ID(FK) and GameAddress ID(FK)  
This will help with showing the correct information and which 
infomtaion to the user of the application. 

Images are handled by ActiveStorage(PK) with the help of AWS 
and the gem acivestorage-validator when shown to the user it
 is done so by specifying that the Listing has many images. 

## Database Schema Design

![image](docs/database_design.png)
![image](docs/ERD_no_FK_min_attributes.png)

As you can see from the provided schema.rb in the db/schema.rb and ERD diagram 
(see further up)  there isn't too much difference between them.
 For the Users table, I didn't need to add certain columns as 
 shown in the scheme due to the gem Device taking care of them
  for me.  The t.index line which can be seen in all tables are
   used to call all rows from the table in a models ‘index’ 
   view, this is a default setting when using Rails.  
   You can see if in effect in most of my pages in one way or 
   another, the most prominent being the ‘listing’ page. 
In the scheme.rb you can see added tables to do with active 
storage. These were all generated when the gem 
'activestorage-validator' was installed.

## Task Allocation & Tracking

Tasks for the development of Eorzea Homes are tracked using a Trello board [found here](https://trello.com/b/I5bPd6W4/eorzea-homes)
- To Do lists tasks that have yet to be started
- Doing lists tasks that are partially complete and currently being worked on
- Done lists tasks that are finished and do not require testing
- Bugs list tasks that help keep track of bugs and if i have found solutions
- Sprinkles list tasks are tasks i would like to implement if i have time
- Requirements list tasks make sure i meet the requirements of the assignment
 
### Screenshots of trelloboard

![image](docs/t1.png)
![image](docs/t2.png)
![image](docs/t3.png)
![image](docs/t4.png)