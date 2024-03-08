class TournamentsController < ApplicationController
    def index
      tournaments = Tournament.all
      render json: tournaments
    end
  
    def show 
      tournament = Tournament.find(params[:id])
      render json: tournament
    end
  
    def create
      tournament = Tournament.create(tournament_params)
      if tournament.valid?
        render json: tournament, status: :created
      else
        render json: { error: tournament.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      tournament = Tournament.find(params[:id])
      tournament.update(tournament_params)
      render json: tournament, status: :ok
    end
  
    def destroy
      tournament = Tournament.find(params[:id])
      tournament.destroy
      head :no_content
    end
  
    private
  
    def tournament_params
      params.require(:tournament).permit(:name, :start_date, :end_date, :location, :game_id)
    end
  end
  