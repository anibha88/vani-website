class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :telephone, :validate => /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :type,      :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Contact Form",
      :to => "svani4193@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end