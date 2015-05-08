require 'faker'
 
 # Create Posts

  50.times do
   Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
  end

 posts = Post.all

 unique_post = [{title: 'This is a new unique title', body: 'This is a new unique body'}] #why can't I place this in the first Post.create!? & what is [{}] about?

 unique_post.each do |attributes|
    Post.create(attributes) unless Post.where(attributes).first
  end
 
 # Create Comments

  100.times do
   Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
  end
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"

  # Create Advertisements

  15.times do
    Advertisement.create!(
      title: posts.sample,
      copy: Faker::Lorem.sentence,
      price: Faker::Commerce.price
      )
  end