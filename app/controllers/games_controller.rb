class GamesController < ApplicationController
     def index
      games = Game.all
      render json: games
    end
  
    def show
      game = Game.find(params[:id])
      render json: game
    end
  
    def create
      game = Game.create(game_params)
      if game.valid?
        render json: game, status: :created
      else
        render json: { error: game.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      game = Game.find(params[:id])
      game.update(game_params)
      render json: game, status: :ok
    end
  
    def destroy
      game = Game.find(params[:id])
      game.destroy
      head :no_content
    end
  
    private
  
    def game_params
      params.require(:game).permit(:name, :description)
    end
  
   
  end
  