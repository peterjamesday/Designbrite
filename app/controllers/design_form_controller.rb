class DesignFormController < ApplicationController
	def index
	end

	def show
		@design = Design.find(params[:id])
	end

	def new
		@design = Design.new
	end

	def create
		@design = Design.new( safe_design_params )

		@design.save
		
	end
end
 