class CreateTalkers < ActiveRecord::Migration[7.0]
  def change
    create_table :talkers do |t|
      t.string :name
      t.integer :age
      t.string :expetise

      t.timestamps
    end
  end
end
