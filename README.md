# Jungle

A mini e-commerce application built with _legacy_ Rails 4.2 that allows users and admin to create an account, purchase items via Stripe API, and --as the admin-- add unique products to the PG database, along with enabling or disabling site-wide sales with defined start and times.

The purpose of this project was to demonstrate my ability to jump into a legacy code base, adapt to older versions of the stack (Rails 4.2, Bootstrap 3, etc.) and continue to integrate _new_ functionality and features in a minimally disruptive manner to the production level code.

## Highlights

- MPA and MVC patterned design using Rails
- Data is persisted by DB server using PostgreSQL
- Uses SASS for styling and Bootstrap 3
-

## Getting Started

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s' to start the server

### Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Sections

### Landing Page

Displays an index of all of the products, as well as those that are sold out.
!["landing page"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/landing%20page.png)

### Product Description

Provides details for a specific product accessed from the landing page.
!["details page"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/product%20details.png)

### Contextual Menus for Users OR Admin

Categories are listed in a menu available to all users, while an Admin dropdown is hidden behind an authentication, granding access to further functionalities.

!["categories menu"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/categories%20menu.png)
!["admin menu"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/categories%20menu.png)

### Checkout Page and Order Summary Page

User can access their shopping cart to checkout, and are then directed to purchase items. After the transaction is complete, the user can see a summery of their order and the email the invoice is sent to.
!["checkout page"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/checkout%20page.png)
!["transaction pay"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/transaction%20pay.png)
!["summary page"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/order%20confirmation.png)

### Admin Dashboard and Options

The admin dashboard allows authorised users to

1. See a dashboard of all their inventory and categories
   !["dashboard page"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/dashboard%20page.png)
2. See a list of all products
   !["all products page"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/all%20products%20pg.png)
3. Add new products
   !["add new products"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/add%20new%20product%20pg.png)
4. Add new categories

   !["add new category"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/add%20new%20category.png)
5. Create and manage sales
   !["create/manage sales"](https://raw.githubusercontent.com/habibcodes/Jungle-Rails/master/images/manage%20sales.png)

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
- PG
- Sass-rails 5.0
- Uglifier 1.3.0
- jQuery
- Turbolinks
- Bcrypt 3.1.7
- Puma
- Boostrap Sass 3.3.6
- Font Awesome
- Money-Rails
- Carrierware
- Rmagick
- Stripe
- Faker

## Testing

- Capybara
- Poltergeist
- Database_cleaner
