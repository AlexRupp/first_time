class HelloWorldController < ApplicationController

	def index 
		lower_case_name = params[:input].downcase
	
	
		if lower_case_name == "alex" 
			@name = "Howdy"
		elsif lower_case_name == "fitz"
			@name = "nice"
		else
			@name = "What are you staring at"
		end

	end

end
