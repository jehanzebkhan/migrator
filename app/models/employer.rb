class Employer < ActiveRecord::Base
  attr_accessible :abn, :alert_flag, :anzic_type_id, :checked_out_flag, :comments, :contact_point_id, :employer_type_id, :file_no, :id, :last_modified_at, :last_modified_by, :legal_name, :object_state_type_id, :private_comments, :provider_id, :qual_last_updated, :timestamp, :trading_name
end
