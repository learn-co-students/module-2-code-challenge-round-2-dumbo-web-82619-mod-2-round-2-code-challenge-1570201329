class Pizza < ApplicationRecord

    belongs_to :restaurant

    # has_and_belongs_to_many :restaurants

    validates :name, uniqueness: :true
end
