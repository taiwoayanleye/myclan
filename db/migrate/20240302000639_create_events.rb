# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.text :description
      t.references :host, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
