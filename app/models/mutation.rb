class Mutation < ApplicationRecord
  belongs_to :power
  belongs_to :alien
  validates :alien, uniqueness: { scope: :power }
  # validate :check_limit
  # validates :power, uniqueness: { scope: :alien }
end
