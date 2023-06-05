class CreateNutritions < ActiveRecord::Migration[7.0]
  def change
    create_table :nutritions do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :calories
      t.float :carbohydrates
      t.float :proteins
      t.float :fats

      t.timestamps
    end
   add_foreign_key :nutritions, :users
  end
end
