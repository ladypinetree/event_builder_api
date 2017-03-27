class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :event_type
      t.date :event_date

      t.timestamps
    end
  end
end
