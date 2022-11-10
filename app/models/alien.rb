class Alien < ApplicationRecord
  belongs_to :planet # alien.planet
  has_many :mutations, dependent: :destroy
  has_many :powers, through: :mutations # alien.powers
  validates :name, presence: true
end
