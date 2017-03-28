class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_title, null: false
      t.string :event_type, null: false
      t.date :event_date, null: false

      t.timestamps
    end
  end
end
