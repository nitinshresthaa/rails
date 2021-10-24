# TODO FOR YOU I'LL GO TO YOUR HOUSE AND KILL YOU IF YOU DON'T FINISH THIS

I'm not kidding... So study about gem
- When you need restart the project run
  - `rails db:drop db:create db:migrate db:seed`
- Devise
  - With this you will have sign in, sign out, sign up, destroy session
  - Will create model User, pay attention about what you have in the current model, you will need to change `username` in views to `email` or.... you can add `username` in the migration, devise accept this, but need to change in controller and model too
  - When you use devise generators, lot of things will be created, like User model, migration, will try to create users views, so pay attention on this... like
    - **Rename the files that you have like User, view users**
    - Remove migrations that use User
    - Update the migration that associate the articles with user
  - When you sign in your application for controllers, views, helpers... you will have `current_user`
    - As you have model `user` and inside `has_many :articles` you can also use `current_user.articles`
    - Maybe you will have a little problem to deal... you have Users `CRUD`
- Refact views
  - Change flash messages
  - Sign out in navbar
  - Update your user

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
