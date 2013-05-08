class SchoolUserView < ActiveRecord::Base
  attr_accessible :email, :full_name, :phone, :school_id, :school_name, :user_level
end
