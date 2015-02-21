class ContactMailer < ActionMailer::Base
  default from: "noreply@synqtech.com"

  def distributor_signup(distributor)
  	
  	@distributor = distributor
  	mail(to: "nolan@synqtech.com", subject: "Distributor Inquiry:#{@distributor.name}")
  
  end

  def survey (roi_survey)
  	
  	@roi_survey = roi_survey
  	mail(to: "nolan@synqtech.com", subject: "Survey Result")

  end
end
