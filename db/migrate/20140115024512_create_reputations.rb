class CreateReputations < ActiveRecord::Migration
  def change
    create_table :reputations do |t|
      t.integer :qualifier_id, null: false
      t.integer :qualified_id, null: false
      t.integer :points, null: false, default: 0

      t.timestamps
    end
  end
end
