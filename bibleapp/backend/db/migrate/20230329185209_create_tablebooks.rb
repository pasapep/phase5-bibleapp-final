class CreateTablebooks < ActiveRecord::Migration[7.0]
  def change
    create_table :tablebooks do |t|
      t.references :bible, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :date_started

      t.timestamps
    end
  end
end
