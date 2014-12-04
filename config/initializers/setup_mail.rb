ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "moments.bz",
	:user_name => "rewards@moments.bz",
	:password => "5t4r3e2w1q",
	:authentication => "plain",
	:enable_starttls_auto => true
}