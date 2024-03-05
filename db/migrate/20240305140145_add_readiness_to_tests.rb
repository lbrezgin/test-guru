class AddReadinessToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :readiness, :boolean, default: false
  end
end
