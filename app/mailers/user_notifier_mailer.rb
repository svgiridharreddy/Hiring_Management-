class UserNotifierMailer < ApplicationMailer
	default from: "hr@effone.com"

	def send_interview_details(candidate)
		@candidate = candidate
		puts "=========================="
		puts @candidate.inspect
		mail(to: case @candidate.skill_set 
		when ruby || rails 
		manager@effoneruby.com
		when dotnet || aspdotnet	
			manger@effonedotnet.com
		when c 
			manger@effonec.com
			
		end, :subject => "Candidate details for requirement position")
	end
end
