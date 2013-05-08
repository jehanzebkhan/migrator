class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.text :id
      t.text :workplace_employer_id
      t.text :contact_point_id
      t.text :workplace_address_id
      t.text :number_of_employees
      t.text :number_of_apprentices
      t.text :number_of_supervisors
      t.text :employment_arrangement_type_id
      t.text :award_type_id
      t.text :employment_training_hours_num
      t.text :attendance_type_id
      t.text :prior_employment_with_employer_flag
      t.text :existing_business_relation_ship_flag
      t.text :business_relationship
      t.text :received_common_wealth_incentive_flag
      t.text :common_wealth_incentive
      t.text :last_modified_at
      t.text :last_modified_by
      t.text :timestamp

      t.timestamps
    end
  end
end
