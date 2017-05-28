# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table(:users,  charset: 'utf-8', primary_key: 'id')

    add_column(:users, :first_name, :string)
    add_column(:users, :username, :string)
    add_column(:users, :password, :string)
    add_column(:users, :email, :string)
    add_column(:users, :notifications, :boolean)
    add_timestamps(:users)

    # t.string :full_name
    # t.string :username
    # t.string :password
    # t.string :email
    # t.boolean :notifications
    # t.timestamps

  end
end
