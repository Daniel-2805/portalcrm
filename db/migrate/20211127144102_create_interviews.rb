class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.string :enteredby
      t.datetime :inputdate
      t.text :conversation
      t.references :leaflet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
