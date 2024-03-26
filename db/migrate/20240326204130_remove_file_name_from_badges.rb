class RemoveFileNameFromBadges < ActiveRecord::Migration[6.0]
  def change
    remove_column :badges, :file_name, :text
  end
end
