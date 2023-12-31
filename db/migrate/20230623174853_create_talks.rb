class CreateTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :talks do |t|
      t.string :subject
      t.time :time
      t.references :talker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
