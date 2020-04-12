# frozen_string_literal: true

# Messages controller
class MailController < ApplicationController
  before_action :require_user

  def create
    mail = current_user.mails.build(whitelist_params)
    if mail.save
      ActionCable.server.broadcast 'chatroom_channel', mail: mail_render(mail)
    end
  end

  private

  def whitelist_params
    params.require(:mail).permit(:body)
  end

  def mail_render(mail)
    render(partial: 'mails/mail', locals: { mail: mail })
  end
end
