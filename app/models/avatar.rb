class Avatar < ApplicationRecord
  has_many :first_players, :class_name => 'Battle', :foreign_key => 'player_one_id', dependent: :destroy
  has_many :second_players, :class_name => 'Battle', :foreign_key => 'player_two_id', dependent: :destroy
  validates :name, :photo, :lives, :attacks, presence: true
  validates :lives, :attacks, inclusion: { in: [1, 2, 3, 4, 5] }
  mount_uploader :photo, PhotoUploader
end
