class Post < ApplicationRecord
    belongs_to :puppy
    belongs_to :friend, through: :puppy
end