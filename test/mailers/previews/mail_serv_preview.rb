# Preview all emails at http://localhost:3000/rails/mailers/mail_serv
class MailServPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mail_serv/new_suggest
  def new_suggest
    MailServ.new_suggest
  end

  # Preview this email at http://localhost:3000/rails/mailers/mail_serv/especial_suggest
  def especial_suggest
    MailServ.especial_suggest
  end

end
