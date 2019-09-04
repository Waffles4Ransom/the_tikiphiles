# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app 
   -install and require Sinatra gem, have the main controller inherit from Sinatra::Base
- [x] Use ActiveRecord for storing information in a database
   -install and require ActiveRecord & Sinatra-ActiveRecord gem, have the models inherit from ActiveRecord::Base
- [x] Include more than one model class (e.g. User, Post, Category)
   -User and Drink models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
   -User has_many Drinks
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
   -Drink belongs_to the User
- [x] Include user accounts with unique login attribute (username or email)
   -user account creation has validations for presence and uniqueness from ActiveRecord
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
   -Drink model has routes new, index, edit, and delete
- [x] Ensure that users can't modify content created by other users
   -built helper method to keep the power to edit or delete content with each user 
- [x] Include user input validations
   -drink creation has validations from ActiveRecord
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
   -errors from ActiveRecord validations are shown to user 
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
   -README includes description, install & use, contributers guide and license!

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message