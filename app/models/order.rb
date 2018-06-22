class Order < ActiveRecord::Base

	#after_create :send_email_to_user

	def send_email_to_user
		UserMail.send_email(self).deliver_now!
	end

end
