class CreateMutations < ActiveRecord::Migration[7.0]
  def change
    create_table :mutations do |t|
      t.references :power, null: false, foreign_key: true
      t.references :alien, null: false, foreign_key: true

      t.timestamps
    end
  end
end
