class CreatePriorEmployments < ActiveRecord::Migration
  def change
    create_table :prior_employments do |t|
      t.text :id
      t.text :employment_id
      t.text :attendance_type_id
      t.text :start_date
      t.text :end_date
      t.text :hours_per_week

      t.timestamps
    end
  end
end
