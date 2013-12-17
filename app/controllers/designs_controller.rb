class DesignsController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]

	def index
		@user = current_user
	end

	def show
		@design = Design.find(params[:id])
		@user = current_user
	end

	def new
		@design = Design.new
	end

	def create
		@design = Design.new( safe_design_params )
		@design.user = current_user
		if @design.save
			flash[:success] = "You just created a new design!"
		redirect_to design_path(@design)
		elsif @design.background_image == false
			flash.now[:error] = "Please "
			render 'new'
		else 
			flash.now[:error] = "Please enter a name for your design!"
			render 'new'
		end
	end

	private

		def safe_design_params
			return params.require(:design).permit(:name, 
				:remove_logo, :hide_contact_host, :hide_save_event, 
				:hide_share_options, :remove_event_header, :remove_title,
				:remove_date, :remove_org_name, :remove_org_location,
				:discount_code, :hide_ticket_name, :hide_promo_link,
				:hide_payment_logos, :hide_calendar_link, :increase_size_salesend,
				:background_image, :background_image_repeat, :background_image_position,
				:background_image_size, :remove_fee_column, :image, :user_id)
		end
end
