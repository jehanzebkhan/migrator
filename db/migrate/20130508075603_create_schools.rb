class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.text :id
      t.text :object_state_type_id
      t.text :name

      t.timestamps
    end
  end
end
