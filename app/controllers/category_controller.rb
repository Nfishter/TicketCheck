class CategoryController < ApplicationController

    before_filter :redirect_if_not_admin


	def new
		@category = Category.new
	end

	def index
		@category = Category.all
	end

	def show
    	@category = Category.find(params[:id])
  	end

  	def create
    	@category = Category.create(category_params)

    	if @category.save 
        	redirect_to "/categories/#{@category.id}"
    	else
        	render "new"
    	end
	end

  private
      def category_params
      params.require(:category).permit(:Type)
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

