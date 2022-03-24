class ContactForm < MailForm::Base
  attributes :name,  :validate => true
  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :subject, :validate => true
  attributes :message

  def headers
    {
        :subject => subject,
        :to => "simeon.j.lam@gmail.com",
        :from => %("#{name}" <#{email}>)
    }
  end
end
