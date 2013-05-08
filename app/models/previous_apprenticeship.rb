class PreviousApprenticeship < ActiveRecord::Base
  attr_accessible :apprentice_number, :employer_id, :id, :qualification_name, :start_year, :state_type_id, :student_id
end
