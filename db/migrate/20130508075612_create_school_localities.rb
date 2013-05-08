class CreateSchoolLocalities < ActiveRecord::Migration
  def change
    create_table :school_localities do |t|
      t.text :id
      t.text :school_id
      t.text :post_code_id
      t.text :timestamp

      t.timestamps
    end
  end
end
