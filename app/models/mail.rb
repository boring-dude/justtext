# frozen_string_literal: true

# Mails model
class Mail < ApplicationRecord
  belongs_to :user
  validates_presence_of :body
  scope :recent_messages, -> { Mail.last(25) }
end
