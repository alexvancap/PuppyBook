class Puppy < ApplicationRecord
    has_many :friends
    has_many :posts
end
