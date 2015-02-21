ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => "smtp.mandrillapp.com",
	:port => 587,
	# :domain => "moments.bz",
	:user_name => "quintan@synqtech.com",
	:password => "evcGRnroBKtZDXciLvPPgA",
	:authentication => "plain",
	:enable_starttls_auto => true
}