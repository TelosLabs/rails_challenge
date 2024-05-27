class Course < ApplicationRecord

  belongs_to :teacher

  has_many :enrollments
  has_many :students, through: :enrollments
  
  
  validates :name, presence: true
  
end
