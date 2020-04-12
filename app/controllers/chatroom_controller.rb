# frozen_string_literal: true

# chatroom controller
class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @mails = Mail.all
  end
end
