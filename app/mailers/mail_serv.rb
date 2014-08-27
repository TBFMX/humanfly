class MailServ < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mail_serv.new_suggest.subject
  #
  def new_suggest(obj,correo)
    @body_data = obj

    mail to: correo
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mail_serv.especial_suggest.subject
  #
  def especial_suggest(obj,correo)
    @body_data = obj

    mail to: correo
  end
end
