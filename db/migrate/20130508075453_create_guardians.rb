class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.text :id
      t.text :object_state_type_id
      t.text :contact_point_id

      t.timestamps
    end
  end
end
