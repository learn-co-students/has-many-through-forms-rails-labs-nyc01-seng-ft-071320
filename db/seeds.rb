# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Post.delete_all
Comment.delete_all
User.delete_all
PostCategory.delete_all


10.times do
  Category.create(name: Faker::Book.genre)
end

20.times do
  Comment.create(content: Faker::TvShows::TwinPeaks, user_id: rand(1..40), post_id: rand(1..30))
end

30.times do
  Post.create(title: Faker::Book.title, content: Faker::TvShows::MichaelScott.quote)
end

40.times do
  User.create(username: Faker::Internet.username, email: Faker::Internet.email)
end

30.times do
  PostCategories.create(post_id: rand(1..30), category_id: rand(1..10))
end