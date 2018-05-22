class CohortTeacher < ApplicationRecord
    belongs_to :teacher
    belongs_to :cohort
    validates :teacher_id, presence: true
    validates :cohort_id, presence: true, uniqueness: true
end