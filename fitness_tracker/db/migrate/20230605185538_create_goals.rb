class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :progress

      t.timestamps
    end
  end
end
