class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.references :user, null: true, foreign_key: true
      t.integer :progress

      t.timestamps
    end
  end
end
