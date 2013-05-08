class Reason < ActiveRecord::Base
  attr_accessible :description, :id, :last_modified_at, :last_modified_by, :reason_type_id
end
