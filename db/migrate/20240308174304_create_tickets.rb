class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :ticket_type
      t.string :price
      t.string :availability
      t.timestamps
      t.references :tournament, null: false, foreign_key: true
    end
  end
end
