class AddReasonToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :reason, :string
  end
end
