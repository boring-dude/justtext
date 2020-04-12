# frozen_string_literal: true

# Mails model
class Mail < ApplicationRecord
  belongs_to :user
  validates_presence_of :body
end
