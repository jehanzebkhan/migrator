class Course < ActiveRecord::Base
  attr_accessible :accredit_date, :code, :copyright_category_type_id, :course_status_type_id, :description, :expiry_date, :id, :last_modified_at, :last_modified_by, :name, :object_state_type_id, :qualification_level_type_id, :sta_reference_id, :state_code, :state_type_id, :version
end
