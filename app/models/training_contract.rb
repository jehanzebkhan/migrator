class TrainingContract < ActiveRecord::Base
  attr_accessible :actual_end_date, :application_id, :apprenticeship_centre_contact_name, :apprenticeship_centre_contact_phone, :apprenticeship_centre_id, :apprenticeship_type_id, :approve_date, :can_comp_doc_flag, :change_of_ownership_flag, :checked_out_flag, :client_id, :comments, :contract_id, :contract_site_code, :contract_state_type_id, :create_date, :data, :date_parent_guardian_signed, :date_training_contract_signed, :documentation_flag, :employer_id, :employment_id, :end_reason_type_id, :existing_worker_flag, :expected_completion_date, :funding_type_id, :guardian_id, :hardcopy_received_date, :id, :last_modified_at, :last_modified_by, :private_comments, :provider_id, :qualification_code, :received_date, :recommencement_flag, :registration_id, :rto_acknowledged_date, :rto_code, :rto_contact_name, :rto_contact_phone, :rto_id, :seq_no, :service_start_date, :signature_flag, :start_date, :state_qualification_id, :student_id, :supported_by_school_flag, :timestamp, :training_contract_status_type_id, :training_length_months_num, :training_plan_flag, :update_date, :vision_test_completed_flag
end