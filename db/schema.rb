# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130508075655) do

  create_table "addresses", :force => true do |t|
    t.text     "contact_point_id"
    t.text     "object_state_type_id"
    t.text     "address_type_id"
    t.text     "post_code_id"
    t.text     "code"
    t.text     "street1"
    t.text     "street2"
    t.text     "street3"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "apprenticeship_centres", :force => true do |t|
    t.text     "object_state_type_id"
    t.text     "contact_point_id"
    t.text     "code"
    t.text     "name"
    t.text     "timestamp"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "course_business_entities", :force => true do |t|
    t.text     "course_id"
    t.text     "business_entity_id"
    t.text     "business_entity_role_type_id"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "course_classifications", :force => true do |t|
    t.text     "course_id"
    t.text     "classification_id"
    t.text     "primary_flag"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "courses", :force => true do |t|
    t.text     "object_state_type_id"
    t.text     "sta_reference_id"
    t.text     "state_type_id"
    t.text     "qualification_level_type_id"
    t.text     "copyright_category_type_id"
    t.text     "course_status_type_id"
    t.text     "code"
    t.text     "state_code"
    t.text     "name"
    t.text     "accredit_date"
    t.text     "expiry_date"
    t.text     "description"
    t.text     "version"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "employers", :force => true do |t|
    t.text     "object_state_type_id"
    t.text     "file_no"
    t.text     "provider_id"
    t.text     "employer_type_id"
    t.text     "anzic_type_id"
    t.text     "contact_point_id"
    t.text     "legal_name"
    t.text     "trading_name"
    t.text     "abn"
    t.text     "alert_flag"
    t.text     "checked_out_flag"
    t.text     "qual_last_updated"
    t.text     "comments"
    t.text     "private_comments"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.text     "timestamp"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "employments", :force => true do |t|
    t.text     "workplace_employer_id"
    t.text     "contact_point_id"
    t.text     "workplace_address_id"
    t.text     "number_of_employees"
    t.text     "number_of_apprentices"
    t.text     "number_of_supervisors"
    t.text     "employment_arrangement_type_id"
    t.text     "award_type_id"
    t.text     "employment_training_hours_num"
    t.text     "attendance_type_id"
    t.text     "prior_employment_with_employer_flag"
    t.text     "existing_business_relation_ship_flag"
    t.text     "business_relationship"
    t.text     "received_common_wealth_incentive_flag"
    t.text     "common_wealth_incentive"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.text     "timestamp"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "guardians", :force => true do |t|
    t.text     "object_state_type_id"
    t.text     "contact_point_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "operator_teams", :force => true do |t|
    t.text     "team_id"
    t.text     "operator_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "previous_apprenticeships", :force => true do |t|
    t.text     "student_id"
    t.text     "employer_id"
    t.text     "qualification_name"
    t.text     "state_type_id"
    t.text     "start_year"
    t.text     "apprentice_number"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "prior_employments", :force => true do |t|
    t.text     "employment_id"
    t.text     "attendance_type_id"
    t.text     "start_date"
    t.text     "end_date"
    t.text     "hours_per_week"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "qualification_classifications", :force => true do |t|
    t.text     "qualification_id"
    t.text     "classification_id"
    t.text     "primary_flag"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "qualifications", :force => true do |t|
    t.text     "object_state_type_id"
    t.text     "training_package_id"
    t.text     "qualification_level_type_id"
    t.text     "code"
    t.text     "name"
    t.text     "description"
    t.text     "version"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.text     "is_migrated"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "reasons", :force => true do |t|
    t.text     "reason_type_id"
    t.text     "description"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "rtos", :force => true do |t|
    t.text     "business_entity_id"
    t.text     "sta_reference_id"
    t.text     "object_state_type_id"
    t.text     "rto_status_type_id"
    t.text     "rto_type_id"
    t.text     "enterprise_flag"
    t.text     "code"
    t.text     "state_code"
    t.text     "initial_register_date"
    t.text     "last_register_date"
    t.text     "expiry_date"
    t.text     "transfer_time_stamp"
    t.text     "is_migrated"
    t.text     "version"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "school_localities", :force => true do |t|
    t.text     "school_id"
    t.text     "post_code_id"
    t.text     "timestamp"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "school_user_views", :force => true do |t|
    t.text     "school_id"
    t.text     "school_name"
    t.text     "full_name"
    t.text     "email"
    t.text     "phone"
    t.text     "user_level"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "schools", :force => true do |t|
    t.text     "object_state_type_id"
    t.text     "name"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "student_qualifications", :force => true do |t|
    t.text     "student_id"
    t.text     "educational_level_type_id"
    t.text     "commenced_date"
    t.text     "completed_date"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "students", :force => true do |t|
    t.text     "object_state_type_id"
    t.text     "file_no"
    t.text     "client_id"
    t.text     "contact_point_id"
    t.text     "gender_type_id"
    t.text     "dateof_birth"
    t.text     "citizenship_type_id"
    t.text     "visa_document_number"
    t.text     "indigenous_status_type_id"
    t.text     "country_type_id"
    t.text     "language_type_id"
    t.text     "self_assessed_disability_flag"
    t.text     "school_level_type_id"
    t.text     "school_id"
    t.text     "highest_school_level_type_id"
    t.text     "month_completed_school_level"
    t.text     "year_completed_school_level"
    t.text     "completed_qualification_flag"
    t.text     "qualification_name"
    t.text     "cannot_use_skill_due_to_disability_flag"
    t.text     "intensive_assistance_flag"
    t.text     "registered_with_centrelink_and_unemployed_flag"
    t.text     "worked_as_apprentice_flag"
    t.text     "credit_sought_flag"
    t.text     "credit_sought_months_num"
    t.text     "credit_evidence_sighted_flag"
    t.text     "currently_undertaking_other_studies_flag"
    t.text     "currently_undertaking_qualification_name"
    t.text     "alert_flag"
    t.text     "checked_out_flag"
    t.text     "comments"
    t.text     "private_comments"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.text     "timestamp"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "trade_areas", :force => true do |t|
    t.text     "area_code"
    t.text     "description"
    t.text     "anta_group_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "training_contracts", :force => true do |t|
    t.text     "seq_no"
    t.text     "hardcopy_received_date"
    t.text     "training_contract_status_type_id"
    t.text     "supported_by_school_flag"
    t.text     "checked_out_flag"
    t.text     "funding_type_id"
    t.text     "end_reason_type_id"
    t.text     "application_id"
    t.text     "client_id"
    t.text     "provider_id"
    t.text     "registration_id"
    t.text     "contract_id"
    t.text     "contract_site_code"
    t.text     "contract_state_type_id"
    t.text     "qualification_code"
    t.text     "state_qualification_id"
    t.text     "rto_id"
    t.text     "rto_code"
    t.text     "rto_contact_name"
    t.text     "rto_contact_phone"
    t.text     "apprenticeship_centre_id"
    t.text     "apprenticeship_centre_contact_name"
    t.text     "apprenticeship_centre_contact_phone"
    t.text     "apprenticeship_type_id"
    t.text     "student_id"
    t.text     "guardian_id"
    t.text     "employer_id"
    t.text     "employment_id"
    t.text     "recommencement_flag"
    t.text     "change_of_ownership_flag"
    t.text     "start_date"
    t.text     "service_start_date"
    t.text     "expected_completion_date"
    t.text     "actual_end_date"
    t.text     "documentation_flag"
    t.text     "training_length_months_num"
    t.text     "existing_worker_flag"
    t.text     "signature_flag"
    t.text     "training_plan_flag"
    t.text     "vision_test_completed_flag"
    t.text     "can_comp_doc_flag"
    t.text     "date_training_contract_signed"
    t.text     "date_parent_guardian_signed"
    t.text     "create_date"
    t.text     "update_date"
    t.text     "received_date"
    t.text     "rto_acknowledged_date"
    t.text     "approve_date"
    t.text     "data"
    t.text     "comments"
    t.text     "private_comments"
    t.text     "last_modified_at"
    t.text     "last_modified_by"
    t.text     "timestamp"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

end
