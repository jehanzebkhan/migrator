class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.text :id
      t.text :object_state_type_id
      t.text :file_no
      t.text :provider_id
      t.text :employer_type_id
      t.text :anzic_type_id
      t.text :contact_point_id
      t.text :legal_name
      t.text :trading_name
      t.text :abn
      t.text :alert_flag
      t.text :checked_out_flag
      t.text :qual_last_updated
      t.text :comments
      t.text :private_comments
      t.text :last_modified_at
      t.text :last_modified_by
      t.text :timestamp

      t.timestamps
    end
  end
end
