class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :id
      t.text :object_state_type_id
      t.text :file_no
      t.text :client_id
      t.text :contact_point_id
      t.text :gender_type_id
      t.text :dateof_birth
      t.text :citizenship_type_id
      t.text :visa_document_number
      t.text :indigenous_status_type_id
      t.text :country_type_id
      t.text :language_type_id
      t.text :self_assessed_disability_flag
      t.text :school_level_type_id
      t.text :school_id
      t.text :highest_school_level_type_id
      t.text :month_completed_school_level
      t.text :year_completed_school_level
      t.text :completed_qualification_flag
      t.text :qualification_name
      t.text :cannot_use_skill_due_to_disability_flag
      t.text :intensive_assistance_flag
      t.text :registered_with_centrelink_and_unemployed_flag
      t.text :worked_as_apprentice_flag
      t.text :credit_sought_flag
      t.text :credit_sought_months_num
      t.text :credit_evidence_sighted_flag
      t.text :currently_undertaking_other_studies_flag
      t.text :currently_undertaking_qualification_name
      t.text :alert_flag
      t.text :checked_out_flag
      t.text :comments
      t.text :private_comments
      t.text :last_modified_at
      t.text :last_modified_by
      t.text :timestamp

      t.timestamps
    end
  end
end
