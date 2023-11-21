class RemoveTestsUsersJoinTable < ActiveRecord::Migration[6.0]
  def up
    drop_join_table :users, :tests, if_exists: true
  end
end
