class CreateTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :location

      t.timestamps
      t.references :game, null: false, foreign_key: true
    end
  end
end
