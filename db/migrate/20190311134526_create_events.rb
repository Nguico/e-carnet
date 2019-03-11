class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :titre
      t.text :commentaire
      t.date :date

      t.timestamps
    end
  end
end