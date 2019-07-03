class Battle < ApplicationRecord
  belongs_to :player_one, :class_name => 'Avatar'
  belongs_to :player_two, :class_name => 'Avatar'
  belongs_to :weapon_one, :class_name => 'Weapon'
  belongs_to :weapon_two, :class_name => 'Weapon'
  belongs_to :shield_one, :class_name => 'Shield'
  belongs_to :shield_two, :class_name => 'Shield'
end
