class Student < ApplicationRecord
  has_many :cohort_students
  has_many :cohorts, through: :cohort_student
end
