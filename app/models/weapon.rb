class Weapon < ApplicationRecord
  has_many :first_weapons, :class_name => 'Battle', :foreign_key => 'weapon_one_id', dependent: :destroy
  has_many :second_weapons, :class_name => 'Battle', :foreign_key => 'weapon_two_id', dependent: :destroy
end
