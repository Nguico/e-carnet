class CreateGears < ActiveRecord::Migration[5.1]
  def change
    create_table :gears do |t|
      t.string :name
      t.string :serie
      t.date :installation
      t.date :expiry
      t.text :description

      t.timestamps
    end
  end
end
