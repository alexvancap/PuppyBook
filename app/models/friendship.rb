class Friendship < ApplicationRecord
    belongs_to :puppy, :class_name => 'Puppy'
    belongs_to :friend, :class_name => 'Puppy'
end
