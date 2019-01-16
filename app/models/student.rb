class Student < ApplicationRecord
  has_many :ducks
  validates :name, presence: true, allow_blank: false
  validates :mod, :inclusion => 1..5
end
