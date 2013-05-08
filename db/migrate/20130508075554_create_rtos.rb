class CreateRtos < ActiveRecord::Migration
  def change
    create_table :rtos do |t|
      t.text :id
      t.text :business_entity_id
      t.text :sta_reference_id
      t.text :object_state_type_id
      t.text :rto_status_type_id
      t.text :rto_type_id
      t.text :enterprise_flag
      t.text :code
      t.text :state_code
      t.text :initial_register_date
      t.text :last_register_date
      t.text :expiry_date
      t.text :transfer_time_stamp
      t.text :is_migrated
      t.text :version
      t.text :last_modified_at
      t.text :last_modified_by

      t.timestamps
    end
  end
end
