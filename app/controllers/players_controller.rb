class PlayersController < ApplicationController
    def index
        players = Player.all
        render json: players
    end

    def show
        player = Player.find(params[:id])
        render json: player 
    end

    def create
        player = Player.create(player_params)
        if player.valid?
         render json: player, status: :created
        else
            render json: {error: player.errors.full_messages},status: :unprocessable_entity
        end
    end

    def update
        player = Player.find(params[:id])
        player.update(player_params)
        render json: player, status: :ok
    end

    def destroy
        player = Player.find(params[:id])
        player.destroy
        head :no_content
    end

    private

    def player_params
        params.require(:player).permit(:name,:date_of_birth,:nationality,:position)
    end
end
