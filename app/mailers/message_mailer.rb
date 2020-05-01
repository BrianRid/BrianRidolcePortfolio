class MessageMailer < ApplicationMailer

  def new_mail
    @message = Message.new
    @message = params[:message]

    mail(to: "brianridolcedev@gmail.com", subject: 'Nouvelle demande de mission')
  end

end
