class CreateGists < ActiveRecord::Migration[6.0]
  def change
    create_table :gists do |t|
      t.string :gist_url
      t.string :user_email
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
