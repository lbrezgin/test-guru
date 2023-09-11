class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :result, null: false
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
