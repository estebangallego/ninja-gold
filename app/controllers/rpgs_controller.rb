class RpgsController < ApplicationController
	def index
		if session[:total].nil?
			session[:total] = 0
			session[:allActivities] =[]
		end 
		@total = session[:total]
		@allActivities = session[:allActivities]
			
	end

	def farm 
		random = rand(10..20)
		session[:total] = session[:total] + random
	  	date = Time.now.strftime("%B %d, %Y")
	  	time = Time.now.strftime("%I:%M %p")
		
		farmActivity = "Earned #{random} golds from the farm! (#{date}, #{time})"
		session[:allActivities].push(farmActivity)

		redirect_to '/'
	end
	def cave
		random = rand(5..10)
		session[:total] = session[:total] + random
	  	date = Time.now.strftime("%B %d, %Y")
	  	time = Time.now.strftime("%I:%M %p")
		farmActivity = "Earned #{random} golds from the cave! (#{date}, #{time})"
		session[:allActivities].push(farmActivity)
		redirect_to '/'
	end
	def house
		random = rand(2..5)
		session[:total] = session[:total] + random
	  	date = Time.now.strftime("%B %d, %Y")
	  	time = Time.now.strftime("%I:%M %p")
		farmActivity = "Earned #{random} golds from the house! (#{date}, #{time})"
		session[:allActivities].push(farmActivity)
		redirect_to '/'
	end
	def casino
		random = rand(-50..50)
		session[:total] = session[:total] + random
	  	date = Time.now.strftime("%B %d, %Y")
	  	time = Time.now.strftime("%I:%M %p")
		farmActivity = "Earned #{random} golds from the casino! (#{date}, #{time})"
		session[:allActivities].push(farmActivity)
		redirect_to '/'
	end
	def reset
		session[:total] = 0
		session[:allActivities] =[]
		redirect_to '/'
	end
end
