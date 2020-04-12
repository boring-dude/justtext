# frozen_string_literal: true

# chatroom controller
class ChatroomController < ApplicationController
  def index
    @mails = Mail.all
  end
end
