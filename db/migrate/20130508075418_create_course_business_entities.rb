class CreateCourseBusinessEntities < ActiveRecord::Migration
  def change
    create_table :course_business_entities do |t|
      t.text :id
      t.text :course_id
      t.text :business_entity_id
      t.text :business_entity_role_type_id
      t.text :last_modified_at
      t.text :last_modified_by

      t.timestamps
    end
  end
end
