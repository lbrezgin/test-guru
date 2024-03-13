class CreateUserBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :user_badges do |t|
      t.references :user, null: false, foreign_key: true, on_delete: :cascade
      t.references :badge, null: false, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
