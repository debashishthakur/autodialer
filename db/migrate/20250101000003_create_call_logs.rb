class CreateCallLogs < ActiveRecord::Migration[7.1]
    def change
      create_table :call_logs do |t|
        t.references :call_session, null: false, foreign_key: true
        t.references :phone_number, null: false, foreign_key: true
        t.string :twilio_call_sid
        t.string :status, default: 'initiated'
        t.integer :duration, default: 0
        t.datetime :started_at
        t.datetime :ended_at
        t.text :call_transcript
        t.text :error_message
        t.timestamps
      end
      
      add_index :call_logs, :twilio_call_sid
    end
  end
  