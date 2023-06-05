class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :exercise
      t.integer :sets
      t.integer :repetitions
      t.float :weight

      t.timestamps
    end
  end
end
