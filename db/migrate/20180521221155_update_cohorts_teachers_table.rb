class UpdateCohortsTeachersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_teachers do |t|
      t.integer :cohort_id
      t.integer :teacher_id
    end
  end
end
