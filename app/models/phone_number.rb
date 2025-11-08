class PhoneNumber < ApplicationRecord
    belongs_to :call_session
    has_many :call_logs, dependent: :destroy
  
    validates :number, presence: true, uniqueness: { scope: :call_session_id }
    validates :status, inclusion: { in: %w(pending processing completed failed) }
  
    enum status: { pending: 0, processing: 1, completed: 2, failed: 3 }
  
    def self.format_to_e164(number)
      cleaned = number.gsub(/[^\d+]/, '')
      return cleaned if cleaned.start_with?('+')
      return "+1#{cleaned}" if cleaned.length == 10
      return "+#{cleaned}" if cleaned.length >= 10
      nil
    end
  end
  