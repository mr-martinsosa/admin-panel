class UpdateCohortsStudentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_students do |t|
      t.integer :cohort_id
      t.integer :student_id
    end
  end
end
