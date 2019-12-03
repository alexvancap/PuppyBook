class AddPasswordDigestToPuppies < ActiveRecord::Migration[6.0]
  def change
    add_column(:puppies, :password_digest, :string)
  end
end
