class CreateTicketOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_orders do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :amount_paid
      t.references :ticket_type_information, foreign_key: true

      t.timestamps
    end
  end
end
