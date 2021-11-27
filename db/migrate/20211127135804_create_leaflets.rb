class CreateLeaflets < ActiveRecord::Migration[6.0]
  def change
    create_table :leaflets do |t|
      t.string :name
      t.string :lastname
      t.string :fone
      t.string :email
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
