class GuestAppearance < ApplicationRecord
  belongs_to :guest
  belongs_to :appearance
end
