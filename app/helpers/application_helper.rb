module ApplicationHelper
	def phone_number(number)
	  digits = number.gsub(/\D/, '').split(//)

	  if (digits.length == 11 and digits[0] == '1')
	    # Strip leading 1
	    digits.shift
	  end

	  if (digits.length == 10)
	    '(%s) %s-%s' % [ digits[0,3], digits[3,3], digits[6,4] ]
	  end
	end
	def include_javascript (file)
	    scriptline = " <script type=\"text/javascript\">" + render(:file => file) + "</script>"
	    content_for(:head, raw(scriptline))
	end
end
