class Cohort < ApplicationRecord
  belongs_to :course
  has_many :students, through: :student_cohorts
  has_many :teachers, through: :teacher_cohorts
end
