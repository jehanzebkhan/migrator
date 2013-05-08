class CreateCourseClassifications < ActiveRecord::Migration
  def change
    create_table :course_classifications do |t|
      t.text :id
      t.text :course_id
      t.text :classification_id
      t.text :primary_flag

      t.timestamps
    end
  end
end
