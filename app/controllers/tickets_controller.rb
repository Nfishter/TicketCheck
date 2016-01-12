class TicketsController < ApplicationController

  before_filter :redirect_if_not_admin, only: [:index, :edit]

	def new
		@ticket = Ticket.new
	end

	def index
		@tickets = Ticket.all
    @users = User.all
	end

	def show
    	@ticket = Ticket.find(params[:id])
      @comment = Comment.all
  end

  def edit
    @ticket = Ticket.find(params[:id])
    @tickets= Ticket.all
    @comments = Comment.all
  end

  def create
    	@ticket = Ticket.new(ticket_params)

    	if @ticket.save 
        	redirect_to root_path, :notice => "Your ticket was saved!"
    	else
        	render "new"
    	end
	end

  def update
  @ticket = Ticket.find(params[:id])

  if @ticket.update_attributes(ticket_params)
    redirect_to @ticket
  else
    render 'edit'
  end
end

    private

    def ticket_params
      params.require(:ticket).permit(:priority, :category_id, :description)
    end

    def redirect_if_not_admin
      if current_user.admin != true
        redirect_to root_path
      end
    end
end