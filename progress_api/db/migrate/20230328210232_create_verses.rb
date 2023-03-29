class CreateVerses < ActiveRecord::Migration[7.0]
  def change
    create_table :verses do |t|
      t.string :verse
      t.text :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
