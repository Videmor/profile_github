class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :fname
      t.string :lname
      t.string :avatar
      t.string :headline
      t.text :bio
      t.string :website
      t.string :location
      t.boolean :enabled, null: false, default: false

      t.timestamps
    end
  end
end
