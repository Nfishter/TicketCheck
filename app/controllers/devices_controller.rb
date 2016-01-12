class DevicesController < ApplicationController

    before_filter :redirect_if_not_admin, only: [:show, :new]


	def new
		@device = Device.new
	end

	def index
		@device = Device.all
	end

	def show
    	@device = Device.find(params[:id])
  	end

  	def create
    	@device = Device.new(device_params)

    	if @device.save 
        	redirect_to "/devices/#{@device.id}", :notice => "Your device was saved!"
    	else
        	render "new"
    	end
	end
  private
      def device_params
        params.require(:device).permit(:Make, :Model, :Type, :Asset_tag)
      end
        def is_admin
      current_user.admin == false
    end

    def redirect_if_not_admin
      if current_user.admin != true
        redirect_to root_path
    end
  end
end
