class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows do |t|
      t.string :status
      t.integer :recipient_id
      t.integer :sender_id

      t.timestamps
    end
  end
end
