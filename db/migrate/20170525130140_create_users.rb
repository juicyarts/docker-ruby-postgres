class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username
      t.string :password
      t.string :email
      t.boolean :notifications, :default => true
      t.string :password
      t.timestampts null: false
    end
  end
end
