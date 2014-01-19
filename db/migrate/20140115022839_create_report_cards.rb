class CreateReportCards < ActiveRecord::Migration
  def change
    create_table :report_cards do |t|
      t.string :name, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
