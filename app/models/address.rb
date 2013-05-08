class Address < ActiveRecord::Base
  attr_accessible :address_type_id, :code, :contact_point_id, :id, :last_modified_at, :last_modified_by, :object_state_type_id, :post_code_id, :street1, :street2, :street3
end
