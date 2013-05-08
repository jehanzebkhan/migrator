class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.text :id
      t.text :object_state_type_id
      t.text :training_package_id
      t.text :qualification_level_type_id
      t.text :code
      t.text :name
      t.text :description
      t.text :version
      t.text :last_modified_at
      t.text :last_modified_by
      t.text :is_migrated

      t.timestamps
    end
  end
end
