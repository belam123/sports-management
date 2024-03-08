class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.datetime :date_of_birth
      t.string :nationality
      t.string :position

      t.timestamps
      t.references :team, null: false, foreign_key: true
    end
  end
end
