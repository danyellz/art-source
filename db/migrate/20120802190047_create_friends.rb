class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :medium
      t.string :description
      t.string :lat
      t.string :lng
      t.integer :user_id

      t.timestamps
    end
  end
end
