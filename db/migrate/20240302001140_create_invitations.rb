# frozen_string_literal: true

class CreateInvitations < ActiveRecord::Migration[7.1]
  def change
    create_table :invitations do |t|
      t.references :event, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: { to_table: :users }
      t.boolean :status

      t.timestamps
    end
    add_index :invitations, %i[event_id guest_id], unique: true
  end
end
