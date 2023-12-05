class UpdateUsersResultColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :result, :integer, null: true
  end
end
