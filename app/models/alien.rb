class Alien < ApplicationRecord
  belongs_to :planet
  validates :name, presence: true
end
