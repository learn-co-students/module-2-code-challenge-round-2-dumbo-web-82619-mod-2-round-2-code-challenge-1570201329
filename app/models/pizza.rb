class Pizza < ApplicationRecord
  belongs_to :restaurant
  validates :name, true
end
