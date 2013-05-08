class Qualification < ActiveRecord::Base
  attr_accessible :code, :description, :id, :is_migrated, :last_modified_at, :last_modified_by, :name, :object_state_type_id, :qualification_level_type_id, :training_package_id, :version
end
