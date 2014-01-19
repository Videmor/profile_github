class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.belongs_to :skill, index: true, null: false
      t.belongs_to :user, index: true, null: false
      t.integer :repository, null: false, default: 0

      t.timestamps
    end
  end
end
