class Classroom < ApplicationRecord
  self.table_name = 'Classrooms'
  has_many :students

  validates :name, presence: true, length: { maximum: 32 }
end
