class CreateTrainingContracts < ActiveRecord::Migration
  def change
    create_table :training_contracts do |t|
      t.text :id
      t.text :seq_no
      t.text :hardcopy_received_date
      t.text :training_contract_status_type_id
      t.text :supported_by_school_flag
      t.text :checked_out_flag
      t.text :funding_type_id
      t.text :end_reason_type_id
      t.text :application_id
      t.text :client_id
      t.text :provider_id
      t.text :registration_id
      t.text :contract_id
      t.text :contract_site_code
      t.text :contract_state_type_id
      t.text :qualification_code
      t.text :state_qualification_id
      t.text :rto_id
      t.text :rto_code
      t.text :rto_contact_name
      t.text :rto_contact_phone
      t.text :apprenticeship_centre_id
      t.text :apprenticeship_centre_contact_name
      t.text :apprenticeship_centre_contact_phone
      t.text :apprenticeship_type_id
      t.text :student_id
      t.text :guardian_id
      t.text :employer_id
      t.text :employment_id
      t.text :recommencement_flag
      t.text :change_of_ownership_flag
      t.text :start_date
      t.text :service_start_date
      t.text :expected_completion_date
      t.text :actual_end_date
      t.text :documentation_flag
      t.text :training_length_months_num
      t.text :existing_worker_flag
      t.text :signature_flag
      t.text :training_plan_flag
      t.text :vision_test_completed_flag
      t.text :can_comp_doc_flag
      t.text :date_training_contract_signed
      t.text :date_parent_guardian_signed
      t.text :create_date
      t.text :update_date
      t.text :received_date
      t.text :rto_acknowledged_date
      t.text :approve_date
      t.text :data
      t.text :comments
      t.text :private_comments
      t.text :last_modified_at
      t.text :last_modified_by
      t.text :timestamp

      t.timestamps
    end
  end
end
