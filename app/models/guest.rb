class Guest < ApplicationRecord
  has_many :guest_appearances
  has_many :appearances, through: :guest_appearances
  has_many :episodes, through: :appearances
end
