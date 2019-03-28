class CreateEventInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :event_informations do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.references :event_venue, foreign_key: true

      t.timestamps
    end
  end
end
