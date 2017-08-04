class NewRalliesController < ApplicationController
	def new
		@newrally = New_Rally.new
		
	end
	 def create
	    @newrally = New_Rally.new(newrally_params)
	    if @newrally.save
	      title = params[:createrally][:title]
	      description = params[:createrally][:description]
	      organization = params[:createrally][:organization]
	      city = params[:createrally][:city]
	      country = params[:createrally][:country]
	      flash[:success] = "Posted"
	      redirect_to new_create_rally_path
	    else
	      flash[:danger] = @createrally.errors.full_messages.join(", ")
	      redirect_to new_create_rally_path
	    end
	end

end