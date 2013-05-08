class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :id
      t.text :object_state_type_id
      t.text :sta_reference_id
      t.text :state_type_id
      t.text :qualification_level_type_id
      t.text :copyright_category_type_id
      t.text :course_status_type_id
      t.text :code
      t.text :state_code
      t.text :name
      t.text :accredit_date
      t.text :expiry_date
      t.text :description
      t.text :version
      t.text :last_modified_at
      t.text :last_modified_by

      t.timestamps
    end
  end
end
