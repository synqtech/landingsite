class Contact < ActionMailer::Base
  default from: "noreply@synqtech.com"

  def distributor_signup(info)
  	@info = info
  	mail(to: "nolan@synqtech.com", subject: "Distributor Inquiry:#{@info.name}")
  end
end
