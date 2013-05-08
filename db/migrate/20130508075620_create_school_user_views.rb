class CreateSchoolUserViews < ActiveRecord::Migration
  def change
    create_table :school_user_views do |t|
      t.text :school_id
      t.text :school_name
      t.text :full_name
      t.text :email
      t.text :phone
      t.text :user_level

      t.timestamps
    end
  end
end
