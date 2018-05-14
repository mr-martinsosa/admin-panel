class Student < ApplicationRecord
  has_many :courses, through: :cohorts
end
