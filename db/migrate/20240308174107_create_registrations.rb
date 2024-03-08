class CreateRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :registrations do |t|
      t.string :registration_date
      t.string :registration_status

      t.timestamps
      t.references :player, null: false, foreign_key: true
      t.references :tournament, null: false, foreign_key: true
    end
  end
end
