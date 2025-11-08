class CreateCallSessions < ActiveRecord::Migration[7.1]
    def change
      create_table :call_sessions do |t|
        t.string :name, null: false
        t.string :status, default: 'pending'
        t.integer :total_numbers, default: 0
        t.integer :completed_calls, default: 0
        t.integer :failed_calls, default: 0
        t.timestamps
      end
    end
  end
  