class StudentQualification < ActiveRecord::Base
  attr_accessible :commenced_date, :completed_date, :educational_level_type_id, :id, :student_id
end
