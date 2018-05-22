class Teacher < ApplicationRecord
  has_many :cohort_teachers
  has_many :cohorts, through: :cohort_teachers

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
