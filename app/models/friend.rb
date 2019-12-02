class Puppy < ApplicationRecord
    belongs_to :puppy
    belongs_to :post, through: :puppy
end