class CreateForgets < ActiveRecord::Migration[6.0]
  def change
    create_table :forgets do |t|
      t.date   :date,     null: false
      t.string :object,   null: false
      t.string :place,    null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
