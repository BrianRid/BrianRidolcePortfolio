class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      MessageMailer.with(message: @message).new_mail.deliver_later
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def message_params
    params.require(:message).permit(:name, :first_name, :email, :message)
  end
end
