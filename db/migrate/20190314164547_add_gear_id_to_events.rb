class AddGearIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :gear, foreign_key: true
  end
end
