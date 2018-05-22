class Cohort < ApplicationRecord
  belongs_to :course
  has_one :cohort_teacher
  has_one :teacher, through: :cohort_teacher
  has_many :cohort_student
  has_many :students, through: :cohort_student
  validates :name, uniqueness: true
end
