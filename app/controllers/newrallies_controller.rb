class NewralliesController < ApplicationController

	def newcitysearch
		@citysearch = Citysearch.new
		@newrally = Newrally.all
	end

	def citysearchcreate
		@citysearch = Citysearch.new(citysearch_params)

		if @citysearch.save
		cityfind = params[:citysearch][:cityfind]
		redirect_to citysearches_new_path
		else
		
		end

	end

	private 
		def citysearch_params
			params.require(:citysearch).permit(:cityfind)
		end

	def country
		@newrally = Newrally.all
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