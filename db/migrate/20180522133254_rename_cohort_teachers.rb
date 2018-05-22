class RenameCohortTeachers < ActiveRecord::Migration[5.2]
  def change
    rename_table :cohorts_teachers, :cohort_teachers
  end
end
