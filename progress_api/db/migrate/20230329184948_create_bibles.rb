class CreateBibles < ActiveRecord::Migration[7.0]
  def change
    create_table :bibles do |t|
      t.string :book
      t.integer :Chapters
      t.integer :Verse

      t.timestamps
    end
  end
end
