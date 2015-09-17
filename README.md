README
-------

A Rails application which serves a Website for the use of a Clothing Retailer.
This application was built using Ruby 2.2.2.


To Run the Program
-------
Once the the repo has been pulled down from github, the user should install
all the gems in the Gemfile. If Bundler is not already installed this should be
done first.

```
$ gem install bundler
```

Then run bundler to install the gems.

```
$ bundle
 ```

This program is built using a postgresql database, so in order to use the website,
the user should first have postgres installed.

The relevant database and tables need to be created first in order to run the website.
First Run a migrate to create a Products and an Ordered Products table. The Products
table will be populated with products, prices and stock numbers.

```
$ rake db:create
$ rake db:migrate
```

The server can then be started using the traditional Rails method.

```
rails s
```
The Website will be served on Localhost:3000.

Code Layout
-------

All the code is layed out in the traditional format.
- The Controllers can be found the app/controller.
- Images, and stylesheets and be found in app/assets.
- Feature and Unit tests can be found in the Spec folder. 

In addition several services have been developed to assist in the Business logic. These can be found in app/services. The corresponding unit tests can be found in Spec File. The Services file contains classes that calculate
the total in the cart, remove and add items in the cart and implement Voucher codes.

The Voucher codes are as follows:
5OFF - £5 off your order
10OFF - £10 off when you spend over £50
15OFF - £50 off when you spend over £75, include at least one footwear item.

The testing suite used is Rspec and can be used by simply running the rspec command
in command line from the root folder.

```
$ rspec
```

Finally a Bootstrap CDN is used to assist with the styling of the website.


My Approach
-------
I used the Behaviour Driven Development methodology to develop this Web application.
I first wrote a feature test, which tested that a user could add items to a shopping cart.
From this I created the databases needed to pass this test before then moving onto
developing the front end display logic. What I developed next was dependant on the
error message that my test gave. The last thing to be developed was the back end logic which,
when a service was being used, was unit tested, following traditional TDD. Each feature
was developed fully before moving onto another. Lastly some styling was added to
make the website more presentable.


Difficulties
-------
My experience with front end development is limited, as I have focused mainly on backend
development. As a result one of the most difficult things I found when developing this
website was developing the front end and adding styling. Having said that I am happy with
how the front end looks and I learnt a lot in the process, especially about CSS.


Improvements That Could Be Made
-------
The most obvious problem currently comes when re-sizing the browser. The images,
both product images and background images, do not re-size with the browser. As
a result the background images can separate or overlap and the products can become
mis-aligned with their product information, I beleive this because I have used px to position elements
rather than %.
The Code is written on a Rails framework. As much as working with Rails has made
it a lot easier when working with the database, and I belive easier for the user setup the database, the website could have been built on a framework such as Sinatra to retain code simplicity. However, having said that, a huge effort has gone into code refacotring and improving readability on the current framework. 
At the moment there is no easy way to increase the quantity of a product already in the basket. A user has to go back to the shopping page and add the item to the basket again. An improvement would be to add a button which simply imcreases the quantity. 
Also there is no JavaScript currently being implemented in the front end. This makes removing items from the cart less smooth in terms of user experience due to reloading the page. Improvements would be to use Javascript so that the page does not have to reload when removing items from the cart. 
I will continue to work on these improvements and develope my front end skills.
