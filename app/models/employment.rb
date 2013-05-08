class Employment < ActiveRecord::Base
  attr_accessible :attendance_type_id, :award_type_id, :business_relationship, :common_wealth_incentive, :contact_point_id, :employment_arrangement_type_id, :employment_training_hours_num, :existing_business_relation_ship_flag, :id, :last_modified_at, :last_modified_by, :number_of_apprentices, :number_of_employees, :number_of_supervisors, :prior_employment_with_employer_flag, :received_common_wealth_incentive_flag, :timestamp, :workplace_address_id, :workplace_employer_id
end
