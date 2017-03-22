class Appearance < ApplicationRecord
  has_many :guest_appearances
  has_many :guests, through: :guest_appearances
  belongs_to :episode

  validates :rating, :inclusion => { :in => 1..5 }
end
