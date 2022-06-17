class CreateReportComments < ActiveRecord::Migration[6.0]
  def change
    create_table :report_comments do |t|

      t.text        :text
      t.integer     :user_id
      t.integer     :post_id
      t.timestamps
    end
  end
end
