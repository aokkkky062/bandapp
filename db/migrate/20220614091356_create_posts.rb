class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :date
      t.text   :program,      null: false
      t.text   :information,  null: false
      t.timestamps
    end
  end
end
