class CreateTradeAreas < ActiveRecord::Migration
  def change
    create_table :trade_areas do |t|
      t.text :id
      t.text :area_code
      t.text :description
      t.text :anta_group_id

      t.timestamps
    end
  end
end
