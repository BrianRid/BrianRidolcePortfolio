# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  def new_mail
    message = Message.new(name: "toto", first_name:"testeur", email: "toto@gmail.com", message: "bravo tu vas peut-être y arriver" )

    MessageMailer.with(message: message).new_mail
  end

end
