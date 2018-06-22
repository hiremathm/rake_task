class UserMail < ApplicationMailer

	def send_email(order)
		@order = order
		if @order.status == "pending"
			mail to: @order.email,subject: "Pay Money"
		end 
	end
end
