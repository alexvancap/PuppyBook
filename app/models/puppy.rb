class Puppy < ApplicationRecord
    has_many :friendships
    has_many :posts
    has_many :friends, through: :friendships
end
