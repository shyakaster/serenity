class Contact < MailForm::Base
	attribute :name, validate: true
		attribute :email, validate: true, email: true
		attribute :message, validate: true

	def headers
		{
			:subject => "serenitykids Contact Form",
			:to => "info@serenitykids.net",
			:from => %("#{name}" <#{email}>)

		}

	end
end