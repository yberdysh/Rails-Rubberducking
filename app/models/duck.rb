class Duck < ApplicationRecord
  belongs_to :student
  validates :student_id, presence: true, allow_nil: false
  validates :name, presence: true
  validates :description, presence: true
end
