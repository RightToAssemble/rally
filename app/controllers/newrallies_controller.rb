class NewralliesController < ApplicationController
	def city
		
		if params[:citysearch]
			Newrally.csearch = true
			@newrally = Newrally.search(params[:citysearch])
		else
			@newrally = Newrally.all
		end

	end
	def state
		
		if params[:statesearch]
			Newrally.csearch = false
			@newrally = Newrally.search(params[:statesearch])
		else
			@newrally = Newrally.all
		end

	end
	def new
		@newrally = Newrally.new
		
	end
	 def create
	    @newrally = Newrally.new(newrally_params)

	   	 if @newrally.save 
	      title = params[:newrally][:title]
	      invite = params[:newrally][:invite]
	      description = params[:newrally][:description]
	      organization = params[:newrally][:organization]
	      city = params[:newrally][:city]
	      state = params[:newrally][:state]
	      flash[:success] = "Posted"
	      redirect_to new_newrally_path

	     else 
	      flash[:danger] = @newrally.errors.full_messages.join(", ")
	      redirect_to new_newrally_path
	      
	    end
	end

	private
		def newrally_params
			params.require(:newrally).permit(:title, :invite, :description, :organization, :city, :state)
		end
	

end