class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :puppies do |t|
      t.string (:name)
      t.string (:breed)
      t.string (:age)
      t.string (:picture)
      t.string (:bio)
      t.string (:password)
      t.string (:email)
      
      t.timestamps
    end
  end
end
