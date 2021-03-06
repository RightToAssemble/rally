class NewralliesController < ApplicationController
	def index
		if params[:search]
			@newrally = Newrally.search(params[:search])
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
	      description = params[:newrally][:description]
	      organization = params[:newrally][:organization]
	      city = params[:newrally][:city]
	      country = params[:newrally][:country]
	      flash[:success] = "Posted"
	      redirect_to new_newrally_path

	     else 
	      flash[:danger] = @newrally.errors.full_messages.join(", ")
	      redirect_to new_newrally_path
	      
	    end
	end
	def show

	end

	private
		def newrally_params
			params.require(:newrally).permit(:title, :description, :organization, :city, :country)
		end
	

end