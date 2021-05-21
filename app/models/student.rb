class Student < ApplicationRecord
  belongs_to :classroom

  validates :name, presence: true, length: { maximum: 50 }
  validates :birth_date, presence: true
  validates :classroom, presence: true

  scope :for_classroom, ->(classroom_id) { where(classroom: classroom_id) }
end
