class Cohort < ApplicationRecord
  belongs_to :course
  has_one :cohort_instructor
  has_one :instructor, through: :cohort_instructor
  has_many :cohort_student
  has_many :students, through: :cohort_student
end
