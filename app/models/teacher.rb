class Teacher < ApplicationRecord
  has_many :courses, through: :cohorts
end
