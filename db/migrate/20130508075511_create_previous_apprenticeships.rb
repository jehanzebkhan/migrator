class CreatePreviousApprenticeships < ActiveRecord::Migration
  def change
    create_table :previous_apprenticeships do |t|
      t.text :id
      t.text :student_id
      t.text :employer_id
      t.text :qualification_name
      t.text :state_type_id
      t.text :start_year
      t.text :apprentice_number

      t.timestamps
    end
  end
end
