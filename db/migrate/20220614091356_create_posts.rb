class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date   :date,         null: false
      t.text   :program,      null: false
      t.text   :information,  null: false
      t.text   :feedback
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
