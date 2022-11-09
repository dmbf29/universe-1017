class Planet < ApplicationRecord
  has_many :aliens, dependent: :destroy
  validates :name, presence: true
end

# planet.aliens
# planet.destroy # to also destroy all aliens on that planet
