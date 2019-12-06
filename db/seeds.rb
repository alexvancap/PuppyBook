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

tommy = Puppy.create({name: "Tommy", breed: "herder", age: "15", picture: "https://cdn2-www.dogtime.com/assets/uploads/2018/10/puppies-cover.jpg", bio: "I am a puppy boii", password:"123", email:"tommy@puppy.com"})
bella = Puppy.create({name: "Bella", breed: "syberian husky", age: "5", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Black-Magic-Big-Boy.jpg/440px-Black-Magic-Big-Boy.jpg", bio: "I am a puppy boii", password:"123", email:"bella@puppy.com"})
charlie = Puppy.create({name: "Charlie", breed: "pug", age: "7", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Mops_oct09_cropped2.jpg/440px-Mops_oct09_cropped2.jpg", bio: "I am a puppy boii", password:"123", email:"charlie@puppy.com"})
luna = Puppy.create({name: "Luna", breed: "pomerian", age: "100", picture: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12225627/Pomeranian-On-White-01.jpg", bio: "I am a puppy boii", password:"123", email:"luna@puppy.com"})



Post.create({title: "sad human", body: "just. lost my human. i borked. and borked. turns out. they were just. in a different room. alert level. back to green.", likes: 1, puppy: joe})
Post.create({title: "bark", body: "I grrrborked. at the huricane. noise on tv. it did not. do much. I apologize", likes: 1, puppy: tommy})
Post.create({title: "bad tv", body: "the human. is always. sad after. wathcing tv. so i hid. all the remotes. i could find.", likes: 1, puppy: bella})
Post.create({title: "i love humans", body: "occasionally during our walks. someone will pass us. and completely ignore my human. but whisper hello to me. i really enjoy this.", likes: 1, puppy: charlie})
Post.create({title: "My first Post", body: "T don't. Know mann", likes: 1, puppy: luna})
Post.create({title: "My first Post", body: "i don't know mann", likes: 1, puppy: bobby})
Post.create({title: "good bath", body: "My owner washed me really well today!", likes: 1, puppy: daisey})
Post.create({title: "Nice walk", body: "I had a good walk with my owner today.", likes: 1, puppy: bobby})



Friendship.create({puppy: bobby, friend: daisey})
Friendship.create({puppy: bobby, friend: alex})
Friendship.create({puppy: bobby, friend: nathan})
Friendship.create({puppy: bobby, friend: joe})
Friendship.create({puppy: bobby, friend: vivian})
Friendship.create({puppy: bobby, friend: tommy})
Friendship.create({puppy: bobby, friend: bella})
Friendship.create({puppy: bobby, friend: charlie})
Friendship.create({puppy: bobby, friend: luna})