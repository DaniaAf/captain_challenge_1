class Shield < ApplicationRecord
  has_many :first_shields, :class_name => 'Battle', :foreign_key => 'shield_one_id', dependent: :destroy
  has_many :second_shields, :class_name => 'Battle', :foreign_key => 'shield_two_id', dependent: :destroy
end
