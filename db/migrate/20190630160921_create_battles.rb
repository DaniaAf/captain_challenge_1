class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.string :winner
      t.references :player_one
      t.references :player_two
      t.references :weapon_one
      t.references :weapon_two
      t.references :shield_one
      t.references :shield_two

      t.timestamps
    end
  end
end
