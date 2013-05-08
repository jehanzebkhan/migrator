class Rto < ActiveRecord::Base
  attr_accessible :business_entity_id, :code, :enterprise_flag, :expiry_date, :id, :initial_register_date, :is_migrated, :last_modified_at, :last_modified_by, :last_register_date, :object_state_type_id, :rto_status_type_id, :rto_type_id, :sta_reference_id, :state_code, :transfer_time_stamp, :version
end
