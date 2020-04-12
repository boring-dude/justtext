# frozen_string_literal: true

# Table for mails model
class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.text :body, null: false
      t.timestamps
    end
    add_reference :mails, :user, foreign_key: true
  end
end
