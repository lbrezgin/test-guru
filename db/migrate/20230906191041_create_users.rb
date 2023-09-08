class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :result, null: false
      t.integer :test_id, null: false

      t.timestamps
    end
  end
end
