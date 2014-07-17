# X-Ruby Assignment

This is a Ruby on Rails application running Rails 4.1.4 intended as a recruitment assignment for front-end developers.

## Requirements

- `ruby 2.1.0`
- `bundler`

## Installation

Fork this repository, then clone and start server as seen below.

```
$ git clone https://github.com/{yourGithubUser}/x-ruby-assignment.git my_directory
$ cd my_directory
$ bundle install
$ rails server
```

The gems already added for your disposal is:

- `compass`
- `awesome_print`

You may add other front-end oriented gems or libraries if you please, but don't overdo it. All in all, this is a pretty standard Rails setup. Feel free to change template engine from Erb to Erubis, Haml or other if you wish.

Writing Javascript to enhance the experience of the application is great, but shouldn't be the main focus of this assignment. We encourage you to write methods, helpers and clean `erb` to aid in your front-end solutions.

The [Typeplate typography framework](http://typeplate.com/) is included as well as some minor typography styles for code elements - just for your convenience, you may discard them.

---

## Assignments

This website should aim to display information on Brands, products and Retailer - information you can find in a mocked library (`lib/assets`) and available through a few instance variables in `home_controller.rb`. You may _not modify_ the library files (except if you see a missing method that you would like to write), but you will find some useful methods there which you might want to use.

We would like to be able to use this app as follows.

### (1) Browse all _Brands_

When this part is finished, we would like to be able to see all Brands (eg. Sony, HTC, Samsonite). This could be in a list, table or any way you believe is intuitive. The following information should be available.

- Name of Brand
- Retailers supplying products of this Brand
- Number of products from this Brand

### (2) Browse all _Retailers_

When this part is finished, we would like to be able to access information about all Retailers (eg. Johnnys Tech Store, Carrefour).

- Name of Retailer
- Brands available at this Retailer
- Number of products available at this Retailer

### (3) Products

When this part is finished, we would like to be able to..

- Click a Brand from (1) to see all products from that Brand, and see where one may buy those products (at which Retailer).
- Click a Retailer from (2) to see all products available at that Retailer, and to see what Brand made that product.

### (4) Prices

When this part is finished, we would like to be able to see the prices of all products (3) and it's discounts - the original price and the correctly calculated price for each Retailer.

In the end we should be able to..

- Browse through all information easily
- See where (at which retailer) the product I want is available
- Deduce where we can buy a certain product at the cheapest price

---

## We'll consider..

- Well written and structured Sass/Scss
- Semantic HTML, clean markup solutions
- Well written, object oriented Javascript, testable Javascript
- Understanding of how to render information through templating engine
- Ability to use available data to calculate and display desired info
- Doing things the _Ruby_ and _MVC_ way
- Eye for intuitive layout and user friendly design

## We'll _not_ consider..

- Graphics design. Colors and images doesn't matter - just interface
- Excessive functionality (gold-plating) that doesn't add to the product

## Contact

If you have any questions or would like to raise any concerns, please [send me an e-mail](mailto:andre.drougge@gmail.com).

---

## FAQ

> **Q)** May I skip all responsive support?

> **A)** Yes, this assignment is more about Ruby/Rails - we assume you know everything about creating responsive web applications.

-

> **Q)** May I write new helpers?

> **A)** Yes, of course!

-

> **Q)** May I mess around with controllers?

> **A)** Yes, go nuts.

-

> **Q)** May I write new methods in the libraries?

> **A)** Yes. Please write good comments on what they do.

-

> **Q)** May I add some more data in the libraries?

> **A)** No, the data found in libraries should stay the same.

-

> **Q)** May I make this a one-page app?

> **A)** Yes sure, just keep in mind that this is not a Javascript test.

-

> **Q)** May I rewrite routes?

> **A)** Yes.

-

> **Q)** May I use Sass grid systems like [Susy](http://susy.oddbird.net/) or [Gridle](http://gridle.org/)?

> **A)** Yes, they are awesome.

-

> **Q)** May the force be with me?

> **A)** Yes, always.
