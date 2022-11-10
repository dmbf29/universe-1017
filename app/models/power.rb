class Power < ApplicationRecord
  # associations
  has_many :mutations
  has_many :aliens, through: :mutations
  has_many :planets, through: :aliens
  validates :name, presence: true, uniqueness: true

  # def to_label
  #   name.capitalize
  # end
end
