class DesignsController < ApplicationController
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
		redirect_to design_path(@design)
	end

	private

		def safe_design_params
			return params.require(:design).permit(:name, :remove_logo, :hide_contact_host, :hide_save_event, :hide_share_options, :remove_event_header, :remove_title)
		end
end
