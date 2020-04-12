# frozen_string_literal: true

# chatroom controller
class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @mail = Mail.new
    @mails = Mail.recent_messages
  end
end
