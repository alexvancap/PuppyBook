# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Puppy.destroy_all
Post.destroy_all
Friendship.destroy_all

bobby = Puppy.create({name: "Bobby", breed: "bulldog", age: "6", picture: "/", bio: "awesome dog", password:"123", email:"bobby@puppy.com"})
daisey = Puppy.create({name: "Daisey", breed: "bulldog", age: "9", picture: "/", bio: "cool dog", password:"123", email:"daisey@puppy.com"})

post1 = Post.create({title: "My first Post", body: "i don't know mann", likes: 1, puppy: bobby})

Friendship.create({puppy: bobby, friend: daisey})