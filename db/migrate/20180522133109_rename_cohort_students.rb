class RenameCohortStudents < ActiveRecord::Migration[5.2]
  def change
    rename_table :cohorts_students, :cohort_students
  end
end
