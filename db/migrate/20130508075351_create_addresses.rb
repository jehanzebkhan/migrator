class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :id
      t.text :contact_point_id
      t.text :object_state_type_id
      t.text :address_type_id
      t.text :post_code_id
      t.text :code
      t.text :street1
      t.text :street2
      t.text :street3
      t.text :last_modified_at
      t.text :last_modified_by

      t.timestamps
    end
  end
end
