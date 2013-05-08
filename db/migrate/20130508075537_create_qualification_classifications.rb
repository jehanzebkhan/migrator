class CreateQualificationClassifications < ActiveRecord::Migration
  def change
    create_table :qualification_classifications do |t|
      t.text :id
      t.text :qualification_id
      t.text :classification_id
      t.text :primary_flag

      t.timestamps
    end
  end
end
