class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.text :id
      t.text :reason_type_id
      t.text :description
      t.text :last_modified_at
      t.text :last_modified_by

      t.timestamps
    end
  end
end
