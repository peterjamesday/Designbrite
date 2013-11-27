class MainController < ApplicationController
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

	private

		def safe_design_params
			return params.require(:design).permit(:name)
		end
end
