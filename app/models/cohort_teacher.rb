class CohortTeacher < ApplicationRecord
    belongs_to :teacher
    belongs_to :cohort
end