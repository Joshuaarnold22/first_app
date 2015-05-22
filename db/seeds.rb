require 'faker'
 
# Create Users

 5.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
   user.skip_confirmation!
   user.save!
 end
 users = User.all
 
 # Note: by calling `User.new` instead of `create`,
 # we create an instance of User which isn't immediately saved to the database.
 
 # The `skip_confirmation!` method sets the `confirmed_at` attribute
 # to avoid triggering an confirmation email when the User is saved.
 
 # The `save` method then saves this User to the database.

 # Create Posts

  50.times do
   Post.create!(
    user:  users.sample,
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
  end

 posts = Post.all

 #unique_post = [{title: 'This is a new unique title', body: 'This is a new unique body'}] #why can't I place this in the first Post.create!? & what is [{}] about?

 #unique_post.each do |attributes|
 #   Post.create(attributes) unless Post.where(attributes).first
 # end
 
 # Create Comments

  100.times do
   Comment.create!(
    # user: users.sample,   # we have not yet associated Users with Comments
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
  end

  # Create Advertisements

  15.times do
    Advertisement.create!(
      title: Faker::Lorem.sentence,
      copy: Faker::Lorem.sentence,
      price: Faker::Commerce.price
      )
  end

  # Create Questions

  # 20.times do
  #  Question.create!(
  #    user:  users.sample,
  #    post: Faker::Lorem.sentence,
  #    body: Faker::Lorem.paragraph
  #  )
  # end

  # questions = Question.all
 
user = User.first
user.skip_reconfirmation!
user.update_attributes!(
  email:    'joshuaarnold22@gmail.com',
  password: 'lovemyj0sh'
  )

admin = User.new(
  name: 'Admin User',
  email: 'admin@admin.admin',
  password: 'adminadmin',
  role: 'admin'
)

admin.skip_confirmation!
admin.save!

member = User.new(
  name: 'User User',
  email: 'user@user.user',
  password: 'useruser'
)

member.skip_confirmation!
member.save!

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
 puts "#{Comment.count} comments created"