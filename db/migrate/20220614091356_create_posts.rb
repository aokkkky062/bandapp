class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.string :date
      t.text   :program
      t.text   :information
      t.timestamps
    end
  end
end
