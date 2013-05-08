class CreateApprenticeshipCentres < ActiveRecord::Migration
  def change
    create_table :apprenticeship_centres do |t|
      t.text :id
      t.text :object_state_type_id
      t.text :contact_point_id
      t.text :code
      t.text :name
      t.text :timestamp

      t.timestamps
    end
  end
end
