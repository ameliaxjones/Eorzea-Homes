
# Eorzea Homes

### The problem

Final Fantasy 14 offers houses for their players which are restricted in volume making them highly valuable (high demand, low volume).Of these they have four different sizes players can choose from:
Apartment, Small, Medium and Large.  

With housing comes decoration and design and this is where the first problem lies. It is surprisingly not an easy task to do, As a player you have to glitch furniture and items to create your ideal aesthetic which can be time consuming and tedious. And being a good designer is a sought after skill which not everyone has the time or patience to master.

Another problem is that housing is considered 'end game' content so most players who do give out their services for interior design, do it for in game money (gil) 
which they have abundance of and have nothing to spend it on. 


### Why it needs solving 

This is where Eorzea Homes comes in, this application seeks to solve this by allowing people to be paid in real world money for their time and services. It is a marketplace for interior designers to showcase what they can achieve with glitches, taste, talent and some flair. Dedicated players invest thousands of hours into building their online community and persona which means that they have a deep care for how this is made.

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




## Abstractions

Eorzea Homes is built using Ruby on Rails and therefore uses the Rails architecture of Model/View/Controller. The Model, with the help of the ruby gem, Devise, automatically 
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

Views/Partials
In the main layouts view, application.html.erb there are partials linked for _navbar and _footer which are used in all pages of the app. Through the yield, property on application.html.erb, different views are rendered inside the application.html.erb according to what is served through the Controller which grabs the model data and view for the route. 

The Models: user.rb, order.rb, listing.rb, housingsize.rb and
 game_address.rb all inherited from ApplicationRecord which 
 then inherits from ActiveRecord. Using Inheritance allows 
 characteristics of one class to inherit from another and 
 vice versa. Doing this is allows the reuse of methods that
  might be needed later on which makes the code DRY .

## Third-Party Service Integrations

- Heroku: Deployment and deployment testing

Heroku is a common Rails hosting tool which makes it easy to deploy code, I used it as a hosting provider and a testing portal for my application, and also to verify my seeding data. Heroku also provides a command-line tool which allows you to deploy to ensure your code will work on other computers.

- AWS: Image hosting

Amazon Web Services (AWS) was utilized in the creation of this application through the use of S3 storage for persistent storage and serving of the images managed through active storage, the key created from AWS (IAM) for this application was locked to only allow access to S3 services of the bucket to prevent abuse of the key if extracted/leaked (such as creating servers in EC2 etc.). Credentials for AWS are saved through rails methods and removed from being a string in the application config files.

- Bootstrap: Styling and Javascript bundle

Less of a third party integration but more a critical piece of community framework used. The application was written using the styling and Javascript bundles from Bootstrap and heavy influences from the Bootstrap documentation.

- Stripe: Payment Gateway

Stripe is a payment gateway, this saves us from having to do all sorts of extra security management when handling credit cards and makes handling payments easier. The application's frontend has been integrated with stripe using an external publish key which allows the order creation. There is additional work required in order to more tightly integrate the backend into stripe for better purchase history.

## Models & ActiveRecord Relationships

Displayed also in the ERD Schema here 

Users:
- Has Many Listings, through user_id on the listings model as the foreign key
- Has Many Orders, through user_id on the orders model as the foreign key 
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
information to the user of the application. This will then allow the linking to an order table.

Images are handled by ActiveStorage(PK) with the help of AWS 
and the gem acivestorage-validator when shown to the user it
 is done so by specifying that the Listing has many images.  The table this relationship is managed through is active_storage_attachments and active_storage blobs. Image resources are associated to both user as avatar and listings as photos.

A review table has been created with two foreign keys, these are reviewee_id and reviewer_id. These both connect to the User table, as a user has many reviews as a reviewer and they can also have many reviews as a reviewee. This is because they are not reviewing the listings, they are reviewing other Users which are sellers (also known as designers).



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

Schema has originally been designed to work with postgres, however should be compatible with other Relational database types.

## Task Allocation & Tracking

Tasks for the development of Eorzea Homes are tracked using a Trello board [found here](https://trello.com/b/I5bPd6W4/eorzea-homes)
- To Do lists tasks that have yet to be started
- Doing lists tasks that are partially complete and currently being worked on
- Done lists tasks that are finished and do not require testing
- Bugs list tasks that help keep track of bugs and if i have found solutions
- Sprinkles list tasks are tasks i would like to implement if i have time
- Requirements list tasks make sure i meet the requirements of the assignment
 

