class TicketsController < ApplicationController
    def index
      tickets = Ticket.all
      render json: tickets
    end
  
    def show
      ticket = Ticket.find(params[:id])
      render json: ticket
    end
  
    def create
      ticket = Ticket.create(ticket_params)
      if ticket.valid?
        render json: ticket, status: :created
      else
        render json: { error: ticket.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      ticket = Ticket.find(params[:id])
      ticket.update(ticket_params)
      render json: ticket, status: :ok
    end
  
    def destroy
      ticket = Ticket.find(params[:id])
      ticket.destroy
      head :no_content
    end
  
    private
  
    def ticket_params
      params.require(:ticket).permit(:ticket_type, :price, :availability, :tournament_id)
    end
  end
  