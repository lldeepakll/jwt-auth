class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :receiver_id
      t.text :txt_msg
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
