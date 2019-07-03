class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.string :name
      t.string :photo
      t.integer :lives
      t.integer :attacks
      t.integer :victories

      t.timestamps
    end
  end
end
