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

bobby = Puppy.create({name: "Bobby", breed: "bulldog", age: "6", picture: "http://www.citydogshare.org/assets/default_dog-f1f5e5aa031ad0a956a936dc4fb4bde95c712f2ad1f99e883b5bc58d22aec668.jpg", bio: "awesome dog", password:"123", email:"bobby@puppy.com"})
daisey = Puppy.create({name: "Daisey", breed: "bulldog", age: "9", picture: "http://www.citydogshare.org/assets/default_dog-f1f5e5aa031ad0a956a936dc4fb4bde95c712f2ad1f99e883b5bc58d22aec668.jpg", bio: "cool dog", password:"123", email:"daisey@puppy.com"})

alex = Puppy.create({name: "Alex", breed: "bulldog", age: "6", picture: "http://www.citydogshare.org/assets/default_dog-f1f5e5aa031ad0a956a936dc4fb4bde95c712f2ad1f99e883b5bc58d22aec668.jpg", bio: "awesome dog", password:"123", email:"alex@puppy.com"})
nathan = Puppy.create({name: "Nathan", breed: "bulldog", age: "9", picture: "http://www.citydogshare.org/assets/default_dog-f1f5e5aa031ad0a956a936dc4fb4bde95c712f2ad1f99e883b5bc58d22aec668.jpg", bio: "cool dog", password:"123", email:"nathan@puppy.com"})

joe = Puppy.create({name: "Joe", breed: "bulldog", age: "6", picture: "http://www.citydogshare.org/assets/default_dog-f1f5e5aa031ad0a956a936dc4fb4bde95c712f2ad1f99e883b5bc58d22aec668.jpg", bio: "awesome dog", password:"123", email:"joe@puppy.com"})
vivian = Puppy.create({name: "Vivian", breed: "bulldog", age: "9", picture: "http://www.citydogshare.org/assets/default_dog-f1f5e5aa031ad0a956a936dc4fb4bde95c712f2ad1f99e883b5bc58d22aec668.jpg", bio: "cool dog", password:"123", email:"vivian@puppy.com"})

Post.create({title: "My first Post", body: "i don't know mann", likes: 1, puppy: bobby})
Post.create({title: "good bath", body: "My owner washed me really well today!", likes: 1, puppy: daisey})
Post.create({title: "Nice walk", body: "I had a good walk with my owner today.", likes: 1, puppy: bobby})
Post.create({title: "My first Post", body: "i don't know mann", likes: 1, puppy: alex})
Post.create({title: "My first Post", body: "i don't know mann", likes: 1, puppy: alex})
Post.create({title: "My first Post", body: "i don't know mann", likes: 1, puppy: alex})


Friendship.create({puppy: bobby, friend: daisey})
Friendship.create({puppy: bobby, friend: alex})
Friendship.create({puppy: bobby, friend: nathan})
Friendship.create({puppy: bobby, friend: joe})
Friendship.create({puppy: bobby, friend: vivian})