class AddStatusToTalks < ActiveRecord::Migration[7.0]
  def change
    add_column :talks, :status, :string
  end
end
