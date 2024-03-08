class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.string :home_venue

      t.timestamps
    end
  end
end
