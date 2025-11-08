class CreatePhoneNumbers < ActiveRecord::Migration[7.1]
    def change
      create_table :phone_numbers do |t|
        t.string :number, null: false
        t.string :status, default: 'pending'
        t.integer :attempts, default: 0
        t.datetime :last_called_at
        t.references :call_session, null: false, foreign_key: true
        t.timestamps
      end
      
      add_index :phone_numbers, [:number, :call_session_id], unique: true
    end
  end
  