class CreateStudentQualifications < ActiveRecord::Migration
  def change
    create_table :student_qualifications do |t|
      t.text :id
      t.text :student_id
      t.text :educational_level_type_id
      t.text :commenced_date
      t.text :completed_date

      t.timestamps
    end
  end
end
