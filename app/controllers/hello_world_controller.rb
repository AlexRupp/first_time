class HelloWorldController < ApplicationController

	def index 
		if params[:input] 
			process_name
		else
			@name = "Enter a String"
		end			
	end
private #tells everything after ruby is private and can only be access from this controller
	def process_name
		lower_case_name = params[:input].downcase
		if lower_case_name == "alex" 
			@name = "Howdy"
		elsif lower_case_name == "fitz"
			@name = "nice"
		else
			@name = "What are you staring at"
		end
		Rails.logger.info "Lower case name was: " + lower_case_name				
	end

end
