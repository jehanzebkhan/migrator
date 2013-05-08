class CreateOperatorTeams < ActiveRecord::Migration
  def change
    create_table :operator_teams do |t|
      t.text :id
      t.text :team_id
      t.text :operator_name

      t.timestamps
    end
  end
end
