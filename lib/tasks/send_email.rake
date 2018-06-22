task :send_mail => :environment do 
	Order.all.each do |order|
		if order.status == "pending"
			# hour = order.created_at.hour + 5
			# minute = order.created_at.min + 30 
			# 	# binding.pry
			# current_hour = Time.now.hour
			# current_minute = Time.now.min
			# binding.pry
			time = order.created_at.in_time_zone("Chennai")
			# binding.pry
			if time.hour == 16
				UserMail.send_email(order).deliver_now!
			end 
		end
	end
end