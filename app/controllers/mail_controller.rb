# frozen_string_literal: true

# Messages controller
class MailController < ApplicationController
  before_action :require_user

  def create
    mail = current_user.mails.build(whitelist_params)
    redirect_to root_path if mail.save
  end

  private 

  def whitelist_params
    params.require(:mail).permit(:body)
  end
end
