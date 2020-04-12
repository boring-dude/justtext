# frozen_string_literal: true

# model for users
class User < ApplicationRecord
  has_many :mails
  validates :name, presence: true, uniqueness: { case_senstive: false },
                   length: { in: 5..25 }
  has_secure_password
end
